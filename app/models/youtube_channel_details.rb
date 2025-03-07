# typed: false
class YoutubeChannelDetails < BaseChannelDetails
  validate :youtube_channel_not_changed_once_initialized
  validates :youtube_channel_id, presence: true
  validates :title, presence: true
  validates :thumbnail_url, presence: true
  validates :auth_user_id, presence: true

  alias_attribute :name, :title

  PREFIX = "youtube#channel:".freeze

  ## Begin methods to satisfy the Eyeshade integration

  def channel_identifier
    "#{PREFIX}#{youtube_channel_id}"
  end

  def authorizer_email
    auth_email
  end

  def authorizer_name
    auth_name
  end

  ## End methods to satisfy the Eyeshade integration

  def publication_title
    title
  end

  def url
    "https://youtube.com/channel/#{youtube_channel_id}"
  end

  private

  # verification to ensure youtube_channel is not changed
  def youtube_channel_not_changed_once_initialized
    return if youtube_channel_id_was.nil?

    if youtube_channel_id_was != youtube_channel_id
      errors.add(:youtube_channel_id, "can not change once initialized")
    end
  end
end
