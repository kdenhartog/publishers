# typed: ignore
require "sentry-raven"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
  # Allow images from CDN
  config.action_dispatch.default_headers = {
    "Access-Control-Allow-Origin" => "https://rewards-stg.bravesoftware.com",
    "Access-Control-Request-Method" => "GET",
    "Access-Control-Allow-Headers" => "Origin, X-Requested-With, Content-Type, Accept, Authorization",
    "Access-Control-Allow-Methods" => "GET",
    "Permissions-Policy" => "interest-cohort=()",
    "X-Frame-Options" => "deny"
  }

  # Rate limiting
  config.middleware.use(Rack::Attack)

  # Code is not reloaded between requests.
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # Disable serving static files from the `/public` folder by default since
  # Apache or NGINX already handles this.
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  # config.action_controller.asset_host = "http://assets.example.com"

  # Specifies the header that your server uses for sending files.
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for Apache
  # config.action_dispatch.x_sendfile_header = "X-Accel-Redirect" # for NGINX

  # Mount Action Cable outside main process or domain
  # config.action_cable.mount_path = nil
  # config.action_cable.url = "wss://example.com/cable"
  # config.action_cable.allowed_request_origins = [ "http://example.com", /http:\/\/example.*/ ]

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  config.force_ssl = true

  # Prepend all log lines with the following tags.
  config.log_tags = [:request_id]

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  config.cache_store = :redis_cache_store, {
    url: Rails.application.secrets[:redis_url],
    connect_timeout: 30, # Defaults to 20 seconds
    read_timeout: 5, # Defaults to 1 second
    write_timeout: 10, # Defaults to 1 second

    error_handler: ->(method:, returning:, exception:) {
                     # Report errors to Sentry as warnings
                     Raven.capture_exception exception, level: "warning",
                                                        tags: {method: method, returning: returning}
                   }
  }

  require "connection_pool"
  REDIS = ConnectionPool.new(size: 5) { Redis.new }

  # Use a real queuing backend for Active Job (and separate queues per environment)
  # config.active_job.queue_adapter     = :resque
  # config.active_job.queue_name_prefix = "publishers_#{Rails.env}"
  config.action_mailer.perform_caching = false

  config.action_mailer.default_url_options = {host: Rails.application.secrets[:url_host]}

  config.action_mailer.smtp_settings = {
    port: Rails.application.secrets[:smtp_server_port],
    address: Rails.application.secrets[:smtp_server_address],
    user_name: "apikey", # see https://sendgrid.com/docs/API_Reference/SMTP_API/integrating_with_the_smtp_api.html
    password: Rails.application.secrets[:sendgrid_api_key],
    domain: Rails.application.secrets[:url_host],
    authentication: :plain,
    enable_starttls_auto: true
  }

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Use S3 for storage
  config.active_storage.service = :amazon_internal_bucket

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Use a different logger for distributed setups.
  # require "syslog/logger"
  # config.logger = ActiveSupport::TaggedLogging.new(Syslog::Logger.new "app-name")

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger = ActiveSupport::TaggedLogging.new(logger)
  end

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  config.after_initialize do
    # Enable this if rotating keys for encrypted fields
    # Util::AttrEncrypted.monkey_patch_old_key_fallback
  end
end
