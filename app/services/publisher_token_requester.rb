# Given a Publisher, request from eyeshade the domain verification token
# This depends on the eyeshade API.
# To develop without this dependency, set env var API_EYESHADE_OFFLINE=1
class PublisherTokenRequester
  attr_reader :publisher

  def initialize(publisher)
    @publisher = publisher
  end

  def perform
    return perform_offline if ENV["API_EYESHADE_OFFLINE"]
    response = connection.get do |request|
      request.url("/v1/publishers/#{publisher.publisher_id}/verifications/#{publisher.id}")
    end
    JSON.parse(response.body)["token"]
  end

  def perform_offline
    Rails.logger.info("PublisherTokenRequester generating a verification token offline.")
    SecureRandom.hex(32)
  end

  private

  def api_base_uri
    Rails.application.secrets[:api_eyeshade_base_uri]
  end

  def connection
    @connection ||= begin
      require "faraday"
      Faraday.new(url: api_base_uri) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.response(:logger, Rails.logger)
        faraday.use(Faraday::Response::RaiseError)
      end
    end
  end
end
