# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `sidekiq` gem.
# Please instead update this file by running `bin/tapioca gem sidekiq`.

module Sidekiq
  extend ::SidekiqScheduler::Schedule

  class << self
    def average_scheduled_poll_interval=(interval); end
    def client_middleware; end
    def configure_client; end
    def configure_server; end
    def death_handlers; end
    def default_server_middleware; end
    def default_worker_options; end
    def default_worker_options=(hash); end
    def dump_json(object); end
    def error_handlers; end
    def load_json(string); end
    def log_formatter; end
    def log_formatter=(log_formatter); end
    def logger; end
    def logger=(logger); end
    def on(event, &block); end
    def options; end
    def options=(opts); end
    def pro?; end
    def redis; end
    def redis=(hash); end
    def redis_info; end
    def redis_pool; end
    def server?; end
    def server_middleware; end
    def strict_args!(mode = T.unsafe(nil)); end
  end
end

class Sidekiq::Client
  include ::Sidekiq::JobUtil

  def initialize(redis_pool = T.unsafe(nil)); end

  def middleware(&block); end
  def push(item); end
  def push_bulk(items); end
  def redis_pool; end
  def redis_pool=(_arg0); end

  private

  def atomic_push(conn, payloads); end
  def process_single(worker_class, item); end
  def raw_push(payloads); end

  class << self
    def enqueue(klass, *args); end
    def enqueue_in(interval, klass, *args); end
    def enqueue_to(queue, klass, *args); end
    def enqueue_to_in(queue, interval, klass, *args); end
    def push(item); end
    def push_bulk(items); end
    def via(pool); end
  end
end

module Sidekiq::Context
  class << self
    def current; end
    def with(hash); end
  end
end

Sidekiq::DEFAULTS = T.let(T.unsafe(nil), Hash)
Sidekiq::DEFAULT_WORKER_OPTIONS = T.let(T.unsafe(nil), Hash)

module Sidekiq::ExceptionHandler
  def handle_exception(ex, ctx = T.unsafe(nil)); end
end

class Sidekiq::ExceptionHandler::Logger
  def call(ex, ctx); end
end

module Sidekiq::Extensions
  class << self
    def enable_delay!; end
  end
end

module Sidekiq::Extensions::PsychAutoload
  def resolve_class(klass_name); end
end

Sidekiq::FAKE_INFO = T.let(T.unsafe(nil), Hash)
Sidekiq::Job = Sidekiq::Worker

module Sidekiq::JobUtil
  def normalize_item(item); end
  def normalized_hash(item_class); end
  def validate(item); end

  private

  def json_safe?(item); end
end

Sidekiq::LICENSE = T.let(T.unsafe(nil), String)

class Sidekiq::Logger < ::Logger
  include ::Sidekiq::LoggingUtils

  def initialize(*args, **kwargs); end
end

module Sidekiq::Logger::Formatters; end

class Sidekiq::Logger::Formatters::Base < ::Logger::Formatter
  def ctx; end
  def format_context; end
  def tid; end
end

class Sidekiq::Logger::Formatters::JSON < ::Sidekiq::Logger::Formatters::Base
  def call(severity, time, program_name, message); end
end

class Sidekiq::Logger::Formatters::Pretty < ::Sidekiq::Logger::Formatters::Base
  def call(severity, time, program_name, message); end
end

class Sidekiq::Logger::Formatters::WithoutTimestamp < ::Sidekiq::Logger::Formatters::Pretty
  def call(severity, time, program_name, message); end
end

module Sidekiq::LoggingUtils
  def add(severity, message = T.unsafe(nil), progname = T.unsafe(nil), &block); end
  def debug?; end
  def error?; end
  def fatal?; end
  def info?; end
  def level; end
  def local_level; end
  def local_level=(level); end
  def log_at(level); end
  def warn?; end
end

Sidekiq::LoggingUtils::LEVELS = T.let(T.unsafe(nil), Hash)
module Sidekiq::Middleware; end

class Sidekiq::Middleware::Chain
  include ::Enumerable

  def initialize; end

  def add(klass, *args); end
  def clear; end
  def each(&block); end
  def empty?; end
  def entries; end
  def exists?(klass); end
  def insert_after(oldklass, newklass, *args); end
  def insert_before(oldklass, newklass, *args); end
  def invoke(*args); end
  def prepend(klass, *args); end
  def remove(klass); end
  def retrieve; end

  private

  def initialize_copy(copy); end
end

class Sidekiq::Middleware::Entry
  def initialize(klass, *args); end

  def klass; end
  def make_new; end
end

Sidekiq::NAME = T.let(T.unsafe(nil), String)
class Sidekiq::Rails < ::Rails::Engine; end

class Sidekiq::Rails::Reloader
  def initialize(app = T.unsafe(nil)); end

  def call; end
  def inspect; end
end

class Sidekiq::RedisConnection
  class << self
    def create(options = T.unsafe(nil)); end

    private

    def build_client(options); end
    def client_opts(options); end
    def determine_redis_provider; end
    def log_info(options); end
    def verify_sizing(size, concurrency); end
  end
end

class Sidekiq::RingBuffer
  include ::Enumerable
  extend ::Forwardable

  def initialize(size, default = T.unsafe(nil)); end

  def <<(element); end
  def [](*args, &block); end
  def buffer; end
  def each(*args, &block); end
  def reset(default = T.unsafe(nil)); end
  def size(*args, &block); end
end

Sidekiq::Scheduler = SidekiqScheduler::Scheduler
class Sidekiq::Shutdown < ::Interrupt; end

module Sidekiq::Util
  include ::Sidekiq::ExceptionHandler

  def fire_event(event, options = T.unsafe(nil)); end
  def hostname; end
  def identity; end
  def logger; end
  def process_nonce; end
  def redis(&block); end
  def safe_thread(name, &block); end
  def tid; end
  def wait_for(deadline, &condblock); end
  def watchdog(last_words); end
end

Sidekiq::Util::PAUSE_TIME = T.let(T.unsafe(nil), Float)
Sidekiq::VERSION = T.let(T.unsafe(nil), String)

module Sidekiq::Worker
  include ::Sidekiq::Worker::Options

  mixes_in_class_methods ::Sidekiq::Worker::Options::ClassMethods
  mixes_in_class_methods ::Sidekiq::Worker::ClassMethods

  def jid; end
  def jid=(_arg0); end
  def logger; end

  class << self
    def included(base); end
  end
end

module Sidekiq::Worker::ClassMethods
  def client_push(item); end
  def delay(*args); end
  def delay_for(*args); end
  def delay_until(*args); end
  def perform_async(*args); end
  def perform_at(interval, *args); end
  def perform_bulk(items, batch_size: T.unsafe(nil)); end
  def perform_in(interval, *args); end
  def perform_inline(*args); end
  def queue_as(q); end
  def set(options); end
  def sidekiq_options(opts = T.unsafe(nil)); end
end

module Sidekiq::Worker::Options
  mixes_in_class_methods ::Sidekiq::Worker::Options::ClassMethods

  class << self
    def included(base); end
  end
end

module Sidekiq::Worker::Options::ClassMethods
  def get_sidekiq_options; end
  def sidekiq_class_attribute(*attrs); end
  def sidekiq_options(opts = T.unsafe(nil)); end
  def sidekiq_retries_exhausted(&block); end
  def sidekiq_retry_in(&block); end
end

Sidekiq::Worker::Options::ClassMethods::ACCESSOR_MUTEX = T.let(T.unsafe(nil), Thread::Mutex)

class Sidekiq::Worker::Setter
  include ::Sidekiq::JobUtil

  def initialize(klass, opts); end

  def perform_async(*args); end
  def perform_at(interval, *args); end
  def perform_bulk(args, batch_size: T.unsafe(nil)); end
  def perform_in(interval, *args); end
  def perform_inline(*args); end
  def perform_sync(*args); end
  def set(options); end

  private

  def at(interval); end
end
