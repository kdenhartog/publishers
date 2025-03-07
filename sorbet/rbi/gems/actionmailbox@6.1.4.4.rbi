# typed: strict

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `actionmailbox` gem.
# Please instead update this file by running `bin/tapioca gem actionmailbox`.

module ActionMailbox
  extend ::ActiveSupport::Autoload

  def incinerate; end
  def incinerate=(val); end
  def incinerate_after; end
  def incinerate_after=(val); end
  def ingress; end
  def ingress=(val); end
  def logger; end
  def logger=(val); end
  def queues; end
  def queues=(val); end

  class << self
    def incinerate; end
    def incinerate=(val); end
    def incinerate_after; end
    def incinerate_after=(val); end
    def ingress; end
    def ingress=(val); end
    def logger; end
    def logger=(val); end
    def queues; end
    def queues=(val); end
    def railtie_helpers_paths; end
    def railtie_namespace; end
    def railtie_routes_url_helpers(include_path_helpers = T.unsafe(nil)); end
    def table_name_prefix; end
    def use_relative_model_naming?; end
  end
end

class ActionMailbox::Base
  include ::ActiveSupport::Rescuable
  include ::ActionMailbox::Routing
  include ::ActiveSupport::Callbacks
  include ::ActionMailbox::Callbacks
  extend ::ActiveSupport::Rescuable::ClassMethods
  extend ::ActionMailbox::Routing::ClassMethods
  extend ::ActiveSupport::Callbacks::ClassMethods
  extend ::ActiveSupport::DescendantsTracker
  extend ::ActionMailbox::Callbacks::ClassMethods

  def initialize(inbound_email); end

  def __callbacks; end
  def __callbacks?; end
  def _process_callbacks; end
  def _run_process_callbacks(&block); end
  def bounce_with(message); end
  def bounced!(*_arg0, &_arg1); end
  def delivered!(*_arg0, &_arg1); end
  def finished_processing?; end
  def inbound_email; end
  def logger(*_arg0, &_arg1); end
  def mail(*_arg0, &_arg1); end
  def perform_processing; end
  def process; end
  def rescue_handlers; end
  def rescue_handlers=(_arg0); end
  def rescue_handlers?; end
  def router; end
  def router=(val); end

  private

  def track_status_of_inbound_email; end

  class << self
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
    def _process_callbacks; end
    def _process_callbacks=(value); end
    def receive(inbound_email); end
    def rescue_handlers; end
    def rescue_handlers=(value); end
    def rescue_handlers?; end
    def router; end
    def router=(val); end
  end
end

class ActionMailbox::BaseController < ::ActionController::Base
  private

  def _layout(lookup_context, formats); end
  def authenticate_by_password; end
  def ensure_configured; end
  def ingress_name; end
  def password; end

  class << self
    def __callbacks; end
    def middleware_stack; end
  end
end

module ActionMailbox::Callbacks
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActiveSupport::Callbacks

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveSupport::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::DescendantsTracker
  mixes_in_class_methods ::ActionMailbox::Callbacks::ClassMethods

  module GeneratedClassMethods
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
  end

  module GeneratedInstanceMethods
    def __callbacks; end
    def __callbacks?; end
  end
end

module ActionMailbox::Callbacks::ClassMethods
  def after_processing(*methods, &block); end
  def around_processing(*methods, &block); end
  def before_processing(*methods, &block); end
end

ActionMailbox::Callbacks::TERMINATOR = T.let(T.unsafe(nil), Proc)
class ActionMailbox::Engine < ::Rails::Engine; end

class ActionMailbox::InboundEmail < ::ActionMailbox::Record
  include ::ActionMailbox::InboundEmail::GeneratedAttributeMethods
  include ::ActionMailbox::InboundEmail::GeneratedAssociationMethods

  class << self
    def _validators; end
    def defined_enums; end
  end
end

module ActionMailbox::InboundEmail::GeneratedAssociationMethods; end
module ActionMailbox::InboundEmail::GeneratedAttributeMethods; end

module ActionMailbox::InboundEmail::Incineratable
  extend ::ActiveSupport::Concern

  def incinerate; end
  def incinerate_later; end
end

class ActionMailbox::InboundEmail::Incineratable::Incineration
  def initialize(inbound_email); end

  def run; end

  private

  def due?; end
  def processed?; end
end

module ActionMailbox::InboundEmail::MessageId
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ActionMailbox::InboundEmail::MessageId::ClassMethods
end

module ActionMailbox::InboundEmail::MessageId::ClassMethods
  def create_and_extract_message_id!(source, **options); end

  private

  def extract_message_id(source); end
  def generate_missing_message_id(message_checksum); end
end

module ActionMailbox::InboundEmail::Routable
  extend ::ActiveSupport::Concern

  def route; end
  def route_later; end
end

class ActionMailbox::IncinerationJob < ::ActiveJob::Base
  def perform(inbound_email); end

  class << self
    def queue_name; end
    def rescue_handlers; end
    def schedule(inbound_email); end
  end
end

class ActionMailbox::Record < ::ActiveRecord::Base
  include ::ActionMailbox::Record::GeneratedAttributeMethods
  include ::ActionMailbox::Record::GeneratedAssociationMethods

  class << self
    def _validators; end
    def defined_enums; end
  end
end

module ActionMailbox::Record::GeneratedAssociationMethods; end
module ActionMailbox::Record::GeneratedAttributeMethods; end

class ActionMailbox::Router
  def initialize; end

  def add_route(address, to:); end
  def add_routes(routes); end
  def mailbox_for(inbound_email); end
  def route(inbound_email); end

  private

  def routes; end
end

class ActionMailbox::Router::Route
  def initialize(address, to:); end

  def address; end
  def mailbox_class; end
  def mailbox_name; end
  def match?(inbound_email); end

  private

  def ensure_valid_address; end
end

class ActionMailbox::Router::RoutingError < ::StandardError; end

module ActionMailbox::Routing
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::ActionMailbox::Routing::ClassMethods
end

module ActionMailbox::Routing::ClassMethods
  def mailbox_for(inbound_email); end
  def route(inbound_email); end
  def routing(routes); end
end

class ActionMailbox::RoutingJob < ::ActiveJob::Base
  def perform(inbound_email); end

  class << self
    def queue_name; end
  end
end

class ActionMailbox::TestCase < ::ActiveSupport::TestCase
  include ::ActionMailbox::TestHelper
end

module ActionMailbox::TestHelper
  def create_inbound_email_from_fixture(fixture_name, status: T.unsafe(nil)); end
  def create_inbound_email_from_mail(status: T.unsafe(nil), **mail_options, &block); end
  def create_inbound_email_from_source(source, status: T.unsafe(nil)); end
  def receive_inbound_email_from_fixture(*args); end
  def receive_inbound_email_from_mail(**kwargs, &block); end
  def receive_inbound_email_from_source(*args); end
end

module Mail
  class << self
    def all(*args, &block); end
    def connection(&block); end
    def defaults(&block); end
    def delete_all(*args, &block); end
    def deliver(*args, &block); end
    def delivery_method; end
    def eager_autoload!; end
    def find(*args, &block); end
    def find_and_delete(*args, &block); end
    def first(*args, &block); end
    def from_source(source); end
    def inform_interceptors(mail); end
    def inform_observers(mail); end
    def last(*args, &block); end
    def new(*args, &block); end
    def random_tag; end
    def read(filename); end
    def read_from_string(mail_as_string); end
    def register_autoload(name, path); end
    def register_interceptor(interceptor); end
    def register_observer(observer); end
    def retriever_method; end
    def something_random; end
    def uniq; end
    def unregister_interceptor(interceptor); end
    def unregister_observer(observer); end
  end
end

class Mail::Address
  include ::Mail::Constants
  include ::Mail::Utilities

  def initialize(value = T.unsafe(nil)); end

  def ==(other_address); end
  def address(output_type = T.unsafe(nil)); end
  def address=(value); end
  def comments; end
  def decoded; end
  def display_name(output_type = T.unsafe(nil)); end
  def display_name=(str); end
  def domain(output_type = T.unsafe(nil)); end
  def encoded; end
  def format(output_type = T.unsafe(nil)); end
  def group; end
  def inspect; end
  def local(output_type = T.unsafe(nil)); end
  def name; end
  def raw; end
  def to_s; end

  private

  def format_comments; end
  def get_comments; end
  def get_display_name; end
  def get_domain; end
  def get_local; end
  def get_name; end
  def parse(value = T.unsafe(nil)); end
  def strip_all_comments(string); end
  def strip_domain_comments(value); end

  class << self
    def wrap(address); end
  end
end

class Mail::Message
  include ::Mail::Constants
  include ::Mail::Utilities

  def initialize(*args, &block); end

  def <=>(other); end
  def ==(other); end
  def [](name); end
  def []=(name, value); end
  def action; end
  def add_charset; end
  def add_content_transfer_encoding; end
  def add_content_type; end
  def add_date(date_val = T.unsafe(nil)); end
  def add_file(values); end
  def add_message_id(msg_id_val = T.unsafe(nil)); end
  def add_mime_version(ver_val = T.unsafe(nil)); end
  def add_part(part); end
  def add_transfer_encoding; end
  def all_parts; end
  def attachment; end
  def attachment?; end
  def attachments; end
  def bcc(val = T.unsafe(nil)); end
  def bcc=(val); end
  def bcc_addresses; end
  def bcc_addrs; end
  def body(value = T.unsafe(nil)); end
  def body=(value); end
  def body_encoding(value = T.unsafe(nil)); end
  def body_encoding=(value); end
  def bounced?; end
  def boundary; end
  def cc(val = T.unsafe(nil)); end
  def cc=(val); end
  def cc_addresses; end
  def cc_addrs; end
  def charset; end
  def charset=(value); end
  def comments(val = T.unsafe(nil)); end
  def comments=(val); end
  def content_description(val = T.unsafe(nil)); end
  def content_description=(val); end
  def content_disposition(val = T.unsafe(nil)); end
  def content_disposition=(val); end
  def content_id(val = T.unsafe(nil)); end
  def content_id=(val); end
  def content_location(val = T.unsafe(nil)); end
  def content_location=(val); end
  def content_transfer_encoding(val = T.unsafe(nil)); end
  def content_transfer_encoding=(val); end
  def content_type(val = T.unsafe(nil)); end
  def content_type=(val); end
  def content_type_parameters; end
  def convert_to_multipart; end
  def date(val = T.unsafe(nil)); end
  def date=(val); end
  def decode_body; end
  def decoded; end
  def default(sym, val = T.unsafe(nil)); end
  def deliver; end
  def deliver!; end
  def delivery_handler; end
  def delivery_handler=(_arg0); end
  def delivery_method(method = T.unsafe(nil), settings = T.unsafe(nil)); end
  def delivery_status_part; end
  def delivery_status_report?; end
  def destinations; end
  def diagnostic_code; end
  def encode!; end
  def encoded; end
  def envelope_date; end
  def envelope_from; end
  def error_status; end
  def errors; end
  def filename; end
  def final_recipient; end
  def find_first_mime_type(mt); end
  def from(val = T.unsafe(nil)); end
  def from=(val); end
  def from_address; end
  def from_addrs; end
  def has_attachments?; end
  def has_charset?; end
  def has_content_transfer_encoding?; end
  def has_content_type?; end
  def has_date?; end
  def has_message_id?; end
  def has_mime_version?; end
  def has_transfer_encoding?; end
  def header(value = T.unsafe(nil)); end
  def header=(value); end
  def header_fields; end
  def headers(hash = T.unsafe(nil)); end
  def html_part(&block); end
  def html_part=(msg); end
  def in_reply_to(val = T.unsafe(nil)); end
  def in_reply_to=(val); end
  def inform_interceptors; end
  def inform_observers; end
  def inspect; end
  def is_marked_for_delete?; end
  def keywords(val = T.unsafe(nil)); end
  def keywords=(val); end
  def main_type; end
  def mark_for_delete=(value = T.unsafe(nil)); end
  def message_content_type; end
  def message_id(val = T.unsafe(nil)); end
  def message_id=(val); end
  def method_missing(name, *args, &block); end
  def mime_parameters; end
  def mime_type; end
  def mime_version(val = T.unsafe(nil)); end
  def mime_version=(val); end
  def multipart?; end
  def multipart_report?; end
  def part(params = T.unsafe(nil)); end
  def parts; end
  def perform_deliveries; end
  def perform_deliveries=(_arg0); end
  def raise_delivery_errors; end
  def raise_delivery_errors=(_arg0); end
  def raw_envelope; end
  def raw_source; end
  def read; end
  def ready_to_send!; end
  def received(val = T.unsafe(nil)); end
  def received=(val); end
  def recipients; end
  def recipients_addresses; end
  def references(val = T.unsafe(nil)); end
  def references=(val); end
  def register_for_delivery_notification(observer); end
  def remote_mta; end
  def reply(*args, &block); end
  def reply_to(val = T.unsafe(nil)); end
  def reply_to=(val); end
  def resent_bcc(val = T.unsafe(nil)); end
  def resent_bcc=(val); end
  def resent_cc(val = T.unsafe(nil)); end
  def resent_cc=(val); end
  def resent_date(val = T.unsafe(nil)); end
  def resent_date=(val); end
  def resent_from(val = T.unsafe(nil)); end
  def resent_from=(val); end
  def resent_message_id(val = T.unsafe(nil)); end
  def resent_message_id=(val); end
  def resent_sender(val = T.unsafe(nil)); end
  def resent_sender=(val); end
  def resent_to(val = T.unsafe(nil)); end
  def resent_to=(val); end
  def retryable?; end
  def return_path(val = T.unsafe(nil)); end
  def return_path=(val); end
  def sender(val = T.unsafe(nil)); end
  def sender=(val); end
  def set_envelope(val); end
  def skip_deletion; end
  def smtp_envelope_from(val = T.unsafe(nil)); end
  def smtp_envelope_from=(val); end
  def smtp_envelope_to(val = T.unsafe(nil)); end
  def smtp_envelope_to=(val); end
  def sub_type; end
  def subject(val = T.unsafe(nil)); end
  def subject=(val); end
  def text?; end
  def text_part(&block); end
  def text_part=(msg); end
  def to(val = T.unsafe(nil)); end
  def to=(val); end
  def to_addresses; end
  def to_addrs; end
  def to_s; end
  def to_yaml(opts = T.unsafe(nil)); end
  def transfer_encoding; end
  def transport_encoding(val = T.unsafe(nil)); end
  def transport_encoding=(val); end
  def without_attachments!; end
  def x_original_to_addresses; end

  private

  def add_boundary; end
  def add_encoding_to_body; end
  def add_multipart_alternate_header; end
  def add_multipart_mixed_header; end
  def add_required_fields; end
  def add_required_message_fields; end
  def allowed_encodings; end
  def body_lazy(value); end
  def decode_body_as_text; end
  def do_delivery; end
  def find_attachment; end
  def identify_and_set_transfer_encoding; end
  def init_with_hash(hash); end
  def init_with_string(string); end
  def initialize_copy(original); end
  def parse_message; end
  def process_body_raw; end
  def raw_source=(value); end
  def separate_parts; end
  def set_envelope_header; end

  class << self
    def default_charset; end
    def default_charset=(charset); end
    def from_hash(hash); end
    def from_yaml(str); end
  end
end

Mail::Message::HEADER_SEPARATOR = T.let(T.unsafe(nil), Regexp)
Mail::RANDOM_TAG = T.let(T.unsafe(nil), String)
Mail::RubyVer = Mail::Ruby19

module Rails
  extend ::ActiveSupport::Autoload

  class << self
    def app_class; end
    def app_class=(_arg0); end
    def application; end
    def application=(_arg0); end
    def autoloaders; end
    def backtrace_cleaner; end
    def cache; end
    def cache=(_arg0); end
    def configuration; end
    def env; end
    def env=(environment); end
    def gem_version; end
    def groups(*groups); end
    def initialize!(*_arg0, &_arg1); end
    def initialized?(*_arg0, &_arg1); end
    def logger; end
    def logger=(_arg0); end
    def public_path; end
    def root; end
    def version; end
  end
end
