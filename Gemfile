# frozen_string_literal: true

def not_arm?
  arch = `uname -m`.strip
  !(arch.include?("arm") || arch.include?("aarch64"))
end

gem "ssrf_filter"

ruby "~> 3.0.2"

source "https://rubygems.org"

gem "rack"

# All things countries
gem "countries"

# Serialize models for JSON APIs
gem "active_model_serializers", "~> 0.10.0"

# For bulk updates/imports
gem "activerecord-import", "1.2.0"

# ActiveRecord Session store for server side storage of session data
gem "activerecord-session_store", "~> 2.0"

gem "activerecord6-redshift-adapter", "= 1.2.1"

# Allowing for URI templates, for HTTP clients
gem "addressable", "~> 2.8"

# Encrypt DB data at rest
gem "attr_encrypted", "~> 3.1.0"

# Integration with Matomo Piwik
gem "autometal-piwik", require: "piwik", git: "https://github.com/matomo-org/piwik-ruby-api.git", branch: "master"

# Use AWS gem for s3 uploads
gem "aws-sdk-s3", "~> 1.89.0"

gem "bootstrap", "=4.6.0"

gem "brotli", "~> 0.2.3"

# Authorization
gem "cancancan", "~> 3.1.0"

gem "connection_pool", "~> 2.2.5"

# Authentication
gem "devise", "~> 4.7.1"

gem "dnsruby", "~> 1.60.0", require: false

# HTTP library wrapper
gem "faraday", "~> 0.17.3"

gem "ffi", "~> 1.15.0"

gem "font-awesome-rails", "~> 4.7.0.4"

gem "google-protobuf", "~> 3.19.2"

# Make logs less mad verbose
gem "lograge", "~> 0.4"

# Dependency for rails
gem "nokogiri", "~> 1.13.3"

# Open Graph tag
gem "meta-tags", "~> 2.14.0"

gem "newrelic_rpm", "~> 6.12", ">= 6.12.0.367"

gem "omniauth-rails_csrf_protection", "~> 0.1.2"
# Oauth client for google / youtube
gem "omniauth-google-oauth2", "~> 0.8.2"

# Oauth client for twitch
gem "omniauth-twitch", "~> 1.1.0"

# Oauth client for twitter
gem "omniauth-twitter", "~> 1.4.0"

# OAuth client for Vimeo
gem "omniauth-vimeo", github: "beanieboi/omniauth-vimeo", ref: "0f855fd3437061fa2d343c1b6036bd9472c0edd1"

# OAuth client for Reddit
gem "omniauth-reddit", git: "https://github.com/brave-intl/omniauth-reddit.git", branch: "master"

# OAuth client for GitHub
gem "omniauth-github", "~> 1.4.0"

# Model record auditing
gem "paper_trail", "~> 11.1.0"

# Use postgresql as the database for Active Record
gem "pg", ">= 0.18", "< 2.0"

# Easy CSS-sthled emails
gem "premailer-rails", "~> 1.10.3", require: false

# Implementation of PublicSuffix
gem "public_suffix", "~> 4.0.3"

# Puma as app server
gem "puma", "~> 5.6.4"

# Make cracking a little bit harder
gem "rack-attack", "~> 6.5.0"

gem "railties", "~> 6.1.4"

gem "rails", "~> 6.1.4.7"
gem "rails-i18n", "~> 6.0.0"

# I love captchas
gem "recaptcha", "~> 3.3", require: "recaptcha/rails"

# Cache with Redis
gem "redis", "~> 4.2.1"

gem "render_async", "~> 2.1.8"

# For ruby 3
gem "rexml"

# Generate QR codes for TOTP 2fa
gem "rqrcode", "~> 0.10"

# SCSS for stylesheets
gem "sass-rails", "~> 5.0"

# Sendgrid mail service
gem "sendgrid-ruby", "~> 6.2.1"

# Exception logging
gem "sentry-raven", "~> 2.11.2", require: false

# Async job processing
gem "sidekiq", "~> 6.4.0"

gem "sidekiq-scheduler", "~> 3.1.1"

# slim for view templates
gem "slim-rails", "~> 3.1"

gem "sorbet", "0.5.9538", group: :development if not_arm?
gem "sorbet-runtime", "0.5.9538"

gem "stripe", "~> 5.1", ">= 5.1.1"

# U2F for 2-factor auth
gem "u2f", "~> 1.0"
gem "webauthn"

# One-time passwords for 2fa
gem "rotp", "~> 6.2.0"

gem "webpacker", "~> 4.0.7"

gem "sorbet-rails", "0.7.27"

# pagination support for models
gem "will_paginate"

# YouTube API client
gem "yt", "~> 0.33.0"

gem "zeitwerk", "~> 2.3.0"
gem "zendesk_api", "~> 1.26.0"

gem "activerecord-nulldb-adapter", "0.7.0"

gem "wasm-thumbnail-rb", git: "https://github.com/brave-intl/wasm-thumbnail.git", tag: "0.0.5", glob: "wasm-thumbnail-rb/*.gemspec"
gem "wasmer", git: "https://github.com/wasmerio/wasmer-ruby.git", ref: "dab7d537748ce410c660c3fe683df4a2af369f82"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "listen", "~> 3.5"

  gem "bullet"

  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console"

  # gem "spring"
  # gem "spring-watcher-listen", "~> 2.0.0"

  # i18n-tasks helps you find and manage missing and unused translations.
  gem "i18n-tasks", "~> 0.9.12"

  gem "tapioca", "0.6.1", require: false if not_arm?
end

group :test do
  # Clean state in-between tests which modify the DB
  gem "database_cleaner"
  # API recording and playback
  gem "vcr"
  gem "webmock", "~> 3.0"
  gem "rails-controller-testing"
  gem "minitest-retry"

  # Image information library
  gem "fastimage", "~> 2.2.5"
end

group :development, :test do
  # Create a temporary table-backed ActiveRecord model
  gem "temping"
  gem "pry"
  gem "pry-stack_explorer", "~> 0.4.9.3"
  gem "byebug"
  gem "pry-byebug"

  # Code formatting
  gem "standard"

  # sorbet
  gem "rubocop-sorbet", require: false
  gem "unparser", require: false

  # Static security vulnerability scanner
  gem "brakeman"
  # Vulnerabilities
  gem "bundler-audit", require: false
  gem "capybara"
  gem "minitest"
  gem "minitest-rails"
  gem "mocha"
  gem "chromedriver-helper"
  gem "simplecov", require: false, group: :test
  gem "selenium-webdriver", "~> 3.142.0"
  gem "solargraph"
  gem "dotenv-rails", "2.7.6"
end
