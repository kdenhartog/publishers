# typed: false
# frozen_string_literal: true

class GeminiConnection < ApplicationRecord
  include WalletProviderProperties

  JAPAN = "JP"

  has_paper_trail

  belongs_to :publisher
  has_many :gemini_connection_for_channels

  validates :recipient_id, uniqueness: true, allow_blank: true

  attr_encrypted :access_token, :refresh_token, key: proc { |record| record.class.encryption_key }

  scope :payable, -> {
    where(is_verified: true)
      .where(status: "Active")
  }

  def prepare_state_token!
    update(state_token: SecureRandom.hex(64).to_s)
  end

  def payable?
    is_verified? && status == "Active"
  end

  def default_currency
    "BAT"
  end

  def supported_currencies
    ["BAT"]
  end

  def japanese_account?
    country&.upcase == JAPAN
  end

  def verify_url
    "#{Rails.application.config.services.gemini[:oauth_uri]}/settings/profile"
  end

  def access_token_expired?
    access_expiration_time.present? && Time.now > access_expiration_time
  end

  # Makes a request to the Gemini API to refresh the current access_token
  def refresh_authorization!
    # Ensure we have an refresh_token.
    return if refresh_token.blank?

    authorization = Gemini::Auth.refresh(token: refresh_token)

    # Update with the latest Authorization
    update!(
      access_token: authorization.access_token,
      refresh_token: authorization.refresh_token,
      expires_in: authorization.expires_in,
      access_expiration_time: authorization.expires_in.seconds.from_now
    )
    # Reload the model so consumers will have the most up to date information.
    reload
  end

  def sync_connection!
    return if access_token.blank?

    # If our access token has expired then we should refresh.
    if access_token_expired?
      refresh_authorization!
    end

    users = Gemini::Account.find(token: access_token).users
    user = users.find { |u| u.is_verified && u.status == "Active" }

    # If we couldn't find a verified account we'll take the first user.
    user ||= users.first

    update(
      display_name: user.name,
      status: user.status,
      country: user.country_code,
      is_verified: user.is_verified
    )

    CreateGeminiRecipientIdsJob.perform_async(id)
  end

  class << self
    def encryption_key(key: Rails.application.secrets[:attr_encrypted_key])
      [key].pack("H*")
    end
  end
end
