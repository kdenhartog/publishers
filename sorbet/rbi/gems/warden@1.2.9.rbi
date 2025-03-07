# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `warden` gem.
# Please instead update this file by running `bin/tapioca gem warden`.

module Warden
  extend ::Warden::Test::WardenHelpers

  class << self
    def test_mode!; end
  end
end

class Warden::Config < ::Hash
  def initialize(other = T.unsafe(nil)); end

  def default_scope; end
  def default_scope=(value); end
  def default_strategies(*strategies); end
  def failure_app; end
  def failure_app=(value); end
  def intercept_401; end
  def intercept_401=(value); end
  def scope_defaults(scope, opts = T.unsafe(nil)); end
  def serialize_from_session(*args, &block); end
  def serialize_into_session(*args, &block); end
  def silence_missing_strategies!; end
  def silence_missing_strategies?; end
  def strategies; end

  protected

  def deep_dup(key, other); end

  private

  def initialize_copy(other); end

  class << self
    def hash_accessor(*names); end
  end
end

module Warden::Hooks
  def _after_failed_fetch; end
  def _after_set_user; end
  def _before_failure; end
  def _before_logout; end
  def _on_request; end
  def _run_callbacks(kind, *args); end
  def after_authentication(options = T.unsafe(nil), method = T.unsafe(nil), &block); end
  def after_failed_fetch(options = T.unsafe(nil), method = T.unsafe(nil), &block); end
  def after_fetch(options = T.unsafe(nil), method = T.unsafe(nil), &block); end
  def after_set_user(options = T.unsafe(nil), method = T.unsafe(nil), &block); end
  def before_failure(options = T.unsafe(nil), method = T.unsafe(nil), &block); end
  def before_logout(options = T.unsafe(nil), method = T.unsafe(nil), &block); end
  def on_request(options = T.unsafe(nil), method = T.unsafe(nil), &block); end
  def prepend_after_authentication(options = T.unsafe(nil), &block); end
  def prepend_after_fetch(options = T.unsafe(nil), &block); end
  def prepend_after_set_user(options = T.unsafe(nil), &block); end
  def prepend_before_failure(options = T.unsafe(nil), &block); end
  def prepend_before_logout(options = T.unsafe(nil), &block); end
  def prepend_on_request(options = T.unsafe(nil), &block); end
end

class Warden::Manager
  extend ::Warden::Hooks

  def initialize(app, options = T.unsafe(nil)); end

  def _run_callbacks(*args); end
  def call(env); end
  def config; end
  def config=(_arg0); end

  private

  def call_failure_app(env, options = T.unsafe(nil)); end
  def handle_chain_result(status, result, env); end
  def intercept_401?(env); end
  def process_unauthenticated(env, options = T.unsafe(nil)); end

  class << self
    def serialize_from_session(scope = T.unsafe(nil), &block); end
    def serialize_into_session(scope = T.unsafe(nil), &block); end
  end
end

module Warden::Mixins; end

module Warden::Mixins::Common
  def cookies; end
  def params; end
  def raw_session; end
  def request; end
  def reset_session!; end
  def session; end
  def warden_cookies; end
end

class Warden::NotAuthenticated < ::StandardError; end

class Warden::Proxy
  include ::Warden::Mixins::Common
  extend ::Forwardable

  def initialize(env, manager); end

  def asset_request?; end
  def authenticate(*args); end
  def authenticate!(*args); end
  def authenticate?(*args); end
  def authenticated?(scope = T.unsafe(nil)); end
  def clear_strategies_cache!(*args); end
  def config; end
  def custom_failure!; end
  def custom_failure?; end
  def custom_response(*args, &block); end
  def default_strategies(*args, &block); end
  def env; end
  def errors; end
  def headers(*args, &block); end
  def inspect(*args); end
  def lock!; end
  def logout(*scopes); end
  def manager; end
  def message; end
  def on_request; end
  def result; end
  def session(scope = T.unsafe(nil)); end
  def session_serializer; end
  def set_user(user, opts = T.unsafe(nil)); end
  def status(*args, &block); end
  def to_s(*args); end
  def unauthenticated?(scope = T.unsafe(nil)); end
  def user(argument = T.unsafe(nil)); end
  def winning_strategies; end
  def winning_strategy; end
  def winning_strategy=(_arg0); end

  private

  def _fetch_strategy(name, scope); end
  def _perform_authentication(*args); end
  def _retrieve_scope_and_opts(args); end
  def _run_strategies_for(scope, args); end
  def _update_winning_strategy(strategy, scope); end
end

Warden::Proxy::ENV_SESSION_OPTIONS = T.let(T.unsafe(nil), String)
Warden::Proxy::ENV_WARDEN_ERRORS = T.let(T.unsafe(nil), String)

class Warden::Proxy::Errors
  include ::Enumerable

  def add(field_name, message); end
  def clear!; end
  def each; end
  def empty?; end
  def full_messages; end
  def method_missing(meth, *args, &block); end
  def on(field_name); end

  private

  def blank?(thing); end
  def errors; end
end

class Warden::SessionSerializer
  def initialize(env); end

  def delete(scope, user = T.unsafe(nil)); end
  def deserialize(key); end
  def env; end
  def fetch(scope); end
  def key_for(scope); end
  def serialize(user); end
  def session; end
  def store(user, scope); end
  def stored?(scope); end
end

module Warden::Strategies
  class << self
    def [](label); end
    def _strategies; end
    def add(label, strategy = T.unsafe(nil), &block); end
    def clear!; end
    def update(label, &block); end
  end
end

class Warden::Strategies::Base
  include ::Warden::Mixins::Common

  def initialize(env, scope = T.unsafe(nil)); end

  def _run!; end
  def clear!; end
  def custom!(response); end
  def custom_response; end
  def custom_response=(_arg0); end
  def env; end
  def errors; end
  def fail(message = T.unsafe(nil)); end
  def fail!(message = T.unsafe(nil)); end
  def halt!; end
  def halted?; end
  def headers(header = T.unsafe(nil)); end
  def message; end
  def message=(_arg0); end
  def pass; end
  def performed?; end
  def redirect!(url, params = T.unsafe(nil), opts = T.unsafe(nil)); end
  def result; end
  def result=(_arg0); end
  def scope; end
  def status; end
  def store?; end
  def success!(user, message = T.unsafe(nil)); end
  def successful?; end
  def user; end
  def user=(_arg0); end
  def valid?; end
end

module Warden::Test; end

module Warden::Test::Helpers
  def login_as(user, opts = T.unsafe(nil)); end
  def logout(*scopes); end

  class << self
    def included(_base); end
  end
end

module Warden::Test::Mock
  def warden; end

  private

  def app; end
  def env; end

  class << self
    def included(_base); end
  end
end

class Warden::Test::Mock::Session
  def initialize(app, _configs = T.unsafe(nil)); end

  def app; end
  def app=(_arg0); end
  def call(e); end
end

module Warden::Test::WardenHelpers
  def _on_next_request; end
  def asset_paths; end
  def asset_paths=(*vals); end
  def on_next_request(&blk); end
  def test_reset!; end
end

class Warden::UserNotSet < ::RuntimeError; end
