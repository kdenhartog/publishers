# typed: ignore
# To set authorization for the API, configure ENV["API_AUTH_TOKEN"] and
# api_auth_token ENV["API_IP_WHITELIST"] (see secrets.yml)
class Api::BaseController < ActionController::API
  before_action :log_full_request, if: -> {
                                         T.bind(self, Api::BaseController)
                                         Rails.application.secrets[:log_api_requests]
                                       }

  API_AUTH_TOKEN = Rails.application.secrets[:api_auth_token].freeze

  API_IP_WHITELIST = if Rails.application.secrets[:api_ip_whitelist]
    Rails.application.secrets[:api_ip_whitelist].split(",").map { |ip_cidr| IPAddr.new(ip_cidr) }.freeze
  else
    [].freeze
  end

  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate

  rescue_from ActiveRecord::RecordInvalid do |e|
    render(json: {message: e.message}, status: :unprocessable_entity)
  end

  private

  # before_action filter to protect API controller actions.
  def authenticate
    ip_authenticated = authenticate_ip
    token_authenticated = authenticate_token

    if token_authenticated && !ip_authenticated
      # Message slack per security team's recommendation https://github.com/brave/security/issues/201#issuecomment-666501816
      SlackMessenger.new(
        message: "#🚨 Publishers API auth token used from a non whitelisted IP address 🚨",
        channel: SlackMessenger::ALERTS
      ).perform
    end

    (ip_authenticated && token_authenticated) || render_unauthorized
  end

  def authenticate_ip
    return true if API_IP_WHITELIST.blank? && (Rails.env.development? || Rails.env.test?)
    API_IP_WHITELIST.any? { |ip_addr| ip_addr.include?(request.remote_ip) }
  end

  def authenticate_token
    return true if API_AUTH_TOKEN.blank? && (Rails.env.development? || Rails.env.test?)
    authenticate_with_http_token do |token, _options|
      # Compare the tokens in a time-constant manner, to mitigate timing attacks.
      ActiveSupport::SecurityUtils.secure_compare(
        ::Digest::SHA256.hexdigest(token),
        ::Digest::SHA256.hexdigest(API_AUTH_TOKEN)
      )
    end
  end

  def log_full_request
    http_envs = {}.tap do |envs|
      request.headers.each do |key, value|
        envs[key] = value if key == key.upcase
      end
    end
    Rails.logger.info("Headers: #{http_envs}")
    Rails.logger.info("Body: #{request&.raw_post}")
  end

  def render_unauthorized
    render(json: {message: "authentication failed 🎷"}, status: 403)
  end

  def ensure_json_content_type
    return if request.content_type == "application/json"
    render(json: {message: "Content-Type must be application/json"}, status: 406)
  end
end
