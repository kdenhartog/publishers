# typed: false
# Puma can serve each request in a thread from an internal thread pool.
# The `threads` method setting takes two numbers: a minimum and maximum.
# Any libraries that use thread pools should be configured to match
# the maximum value specified for Puma. Default is set to 5 threads for minimum
# and maximum; this matches the default thread size of Active Record.
#
max_threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
min_threads_count = ENV.fetch("RAILS_MIN_THREADS") { max_threads_count }
threads min_threads_count, max_threads_count

# Specifies the `worker_timeout` threshold that Puma will use to wait before
# terminating a worker in development environments.
#
worker_timeout 3600 if ENV.fetch("RAILS_ENV", "development") == "development"

# Specifies the `environment` that Puma will run in.
#
address = ENV.fetch("ADDRESS") { "127.0.0.1" }
rails_env = ENV.fetch("RAILS_ENV") { "development" }
environment rails_env

if rails_env == "development"
  if ENV["SSL"] == "off"
    bind ENV.fetch("BIND") {
           "tcp://0.0.0.0:#{ENV.fetch("PORT") { 3000 }}"
         }
  else
    ssl_bind address, "3000", {
      key: ENV.fetch("SSL_KEY_PATH") { "ssl/server.key" },
      cert: ENV.fetch("SSL_CERT_PATH") { "ssl/server.crt" },
      verify_mode: "none"
    }
  end
else
  # Specifies the `port` that Puma will listen on to receive requests; default is 3000.
  #
  port ENV.fetch("PORT", 3000)
end

# Specifies the number of `workers` to boot in clustered mode.
# Workers are forked web server processes. If using threads and workers together
# the concurrency of the application would be max `threads` * `workers`.
# Workers do not work on JRuby or Windows (both of which do not support
# processes).
#
# workers ENV.fetch("WEB_CONCURRENCY") { 2 }

# Use the `preload_app!` method when specifying a `workers` number.
# This directive tells Puma to first boot the application and load code
# before forking the application. This takes advantage of Copy On Write
# process behavior so workers use less memory.
#
# preload_app!

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
