# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `active_model_serializers` gem.
# Please instead update this file by running `bin/tapioca gem active_model_serializers`.

module ActionController
  extend ::ActiveSupport::Autoload

  class << self
    def add_renderer(key, &block); end
    def remove_renderer(key); end
  end
end

module ActionController::Serialization
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActionController::Renderers

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActionController::Renderers::ClassMethods
  mixes_in_class_methods ::ActionController::Serialization::ClassMethods

  def _render_option_json(resource, options); end
  def _render_with_renderer_json(resource, options); end
  def get_serializer(resource, options = T.unsafe(nil)); end
  def namespace_for_class(klass); end
  def namespace_for_serializer; end
  def serialization_scope; end
  def use_adapter?; end

  module GeneratedClassMethods
    def _renderers; end
    def _renderers=(value); end
    def _renderers?; end
    def _serialization_scope; end
    def _serialization_scope=(value); end
    def _serialization_scope?; end
  end

  module GeneratedInstanceMethods
    def _renderers; end
    def _renderers=(value); end
    def _renderers?; end
    def _serialization_scope; end
    def _serialization_scope=(value); end
    def _serialization_scope?; end
  end
end

module ActionController::Serialization::ClassMethods
  def serialization_scope(scope); end
end

module ActiveModel
  extend ::ActiveSupport::Autoload

  class << self
    def eager_load!; end
    def gem_version; end
    def version; end
  end
end

class ActiveModel::SerializableResource
  class << self
    def _deprecated_new(*_arg0, &_arg1); end
    def new(*args, &block); end
  end
end

class ActiveModel::Serializer
  include ::ActiveSupport::Configurable
  include ::ActiveModel::Serializer::Caching
  extend ::ActiveSupport::Autoload
  extend ::ActiveSupport::Configurable::ClassMethods
  extend ::ActiveModel::Serializer::Caching::ClassMethods

  def initialize(object, options = T.unsafe(nil)); end

  def _links; end
  def _links?; end
  def _meta; end
  def _meta?; end
  def _reflections; end
  def _reflections?; end
  def _type; end
  def _type?; end
  def as_json(adapter_opts = T.unsafe(nil)); end
  def associations(include_directive = T.unsafe(nil), include_slice = T.unsafe(nil)); end
  def associations_hash(adapter_options, options, adapter_instance); end
  def attributes(requested_attrs = T.unsafe(nil), reload = T.unsafe(nil)); end
  def attributes_hash(_adapter_options, options, adapter_instance); end
  def json_key; end
  def object; end
  def object=(_arg0); end
  def read_attribute_for_serialization(attr); end
  def root; end
  def root=(_arg0); end
  def scope; end
  def scope=(_arg0); end
  def serializable_hash(adapter_options = T.unsafe(nil), options = T.unsafe(nil), adapter_instance = T.unsafe(nil)); end
  def success?; end
  def to_h(adapter_options = T.unsafe(nil), options = T.unsafe(nil), adapter_instance = T.unsafe(nil)); end
  def to_hash(adapter_options = T.unsafe(nil), options = T.unsafe(nil), adapter_instance = T.unsafe(nil)); end

  protected

  def instance_options; end
  def instance_options=(_arg0); end
  def instance_reflections; end
  def instance_reflections=(_arg0); end

  class << self
    def _attributes; end
    def _attributes_data; end
    def _attributes_data=(value); end
    def _attributes_data?; end
    def _cache; end
    def _cache=(value); end
    def _cache?; end
    def _cache_digest_file_path; end
    def _cache_digest_file_path=(value); end
    def _cache_digest_file_path?; end
    def _cache_except; end
    def _cache_except=(value); end
    def _cache_except?; end
    def _cache_key; end
    def _cache_key=(value); end
    def _cache_key?; end
    def _cache_only; end
    def _cache_only=(value); end
    def _cache_only?; end
    def _cache_options; end
    def _cache_options=(value); end
    def _cache_options?; end
    def _deprecated_adapter; end
    def _links; end
    def _links=(value); end
    def _links?; end
    def _meta; end
    def _meta=(value); end
    def _meta?; end
    def _reflections; end
    def _reflections=(value); end
    def _reflections?; end
    def _type; end
    def _type=(value); end
    def _type?; end
    def adapter(*args, &block); end
    def attribute(attr, options = T.unsafe(nil), &block); end
    def attributes(*attrs); end
    def belongs_to(name, options = T.unsafe(nil), &block); end
    def get_serializer_for(klass, namespace = T.unsafe(nil)); end
    def has_many(name, options = T.unsafe(nil), &block); end
    def has_one(name, options = T.unsafe(nil), &block); end
    def include_directive_from_options(options); end
    def inherited(base); end
    def link(name, *args, &block); end
    def meta(value = T.unsafe(nil), &block); end
    def serialization_adapter_instance; end
    def serializer_for(resource_or_class, options = T.unsafe(nil)); end
    def serializer_lookup_chain_for(klass, namespace = T.unsafe(nil)); end
    def serializers_cache; end
    def type(type); end

    private

    def associate(reflection); end
  end
end

module ActiveModel::Serializer::Adapter
  class << self
    def _deprecated_adapter_class(*_arg0, &_arg1); end
    def _deprecated_adapter_map(*_arg0, &_arg1); end
    def _deprecated_adapters(*_arg0, &_arg1); end
    def _deprecated_create(*_arg0, &_arg1); end
    def _deprecated_lookup(*_arg0, &_arg1); end
    def _deprecated_register(*_arg0, &_arg1); end
    def adapter_class(*args, &block); end
    def adapter_map(*args, &block); end
    def adapters(*args, &block); end
    def create(*args, &block); end
    def lookup(*args, &block); end
    def register(*args, &block); end
  end
end

class ActiveModel::Serializer::Adapter::Attributes
  def initialize(serializer, options = T.unsafe(nil)); end

  class << self
    def _deprecated_new(*_arg0); end
    def new(*args, &block); end
  end
end

class ActiveModel::Serializer::Adapter::Base
  def initialize(serializer, options = T.unsafe(nil)); end

  class << self
    def inherited(*args, &block); end

    private

    def _deprecated_inherited(_arg0); end
  end
end

class ActiveModel::Serializer::Adapter::Json
  def initialize(serializer, options = T.unsafe(nil)); end

  class << self
    def _deprecated_new(*_arg0); end
    def new(*args, &block); end
  end
end

class ActiveModel::Serializer::Adapter::JsonApi
  def initialize(serializer, options = T.unsafe(nil)); end

  class << self
    def _deprecated_new(*_arg0); end
    def new(*args, &block); end
  end
end

class ActiveModel::Serializer::Adapter::Null
  def initialize(serializer, options = T.unsafe(nil)); end

  class << self
    def _deprecated_new(*_arg0); end
    def new(*args, &block); end
  end
end

class ActiveModel::Serializer::ArraySerializer < ::ActiveModel::Serializer::CollectionSerializer
  class << self
    def _deprecated_new(*_arg0); end
    def new(*args, &block); end
  end
end

class ActiveModel::Serializer::Association < ::Struct
  def initialize(*_arg0); end

  def association_options; end
  def association_options=(_); end
  def belongs_to?; end
  def collection?(*_arg0, &_arg1); end
  def include_data?(*_arg0, &_arg1); end
  def key; end
  def key?; end
  def lazy_association; end
  def links; end
  def meta; end
  def name(*_arg0, &_arg1); end
  def object(*_arg0, &_arg1); end
  def polymorphic?; end
  def reflection; end
  def reflection=(_); end
  def reflection_options(*_arg0, &_arg1); end
  def serializable_hash(adapter_options, adapter_instance); end
  def virtual_value(*_arg0, &_arg1); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class ActiveModel::Serializer::Attribute < ::ActiveModel::Serializer::Field; end

class ActiveModel::Serializer::BelongsToReflection < ::ActiveModel::Serializer::Reflection
  def foreign_key_on; end
end

module ActiveModel::Serializer::Caching
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModel::Serializer::Caching::ClassMethods

  def cache_key(adapter_instance); end
  def expand_cache_key(parts); end
  def fetch(adapter_instance, cache_options = T.unsafe(nil), key = T.unsafe(nil)); end
  def fetch_attributes(fields, cached_attributes, adapter_instance); end
  def fetch_attributes_fragment(adapter_instance, cached_attributes = T.unsafe(nil)); end
  def object_cache_key; end
  def serializer_class; end

  module GeneratedClassMethods
    def _cache; end
    def _cache=(value); end
    def _cache?; end
    def _cache_digest_file_path; end
    def _cache_digest_file_path=(value); end
    def _cache_digest_file_path?; end
    def _cache_except; end
    def _cache_except=(value); end
    def _cache_except?; end
    def _cache_key; end
    def _cache_key=(value); end
    def _cache_key?; end
    def _cache_only; end
    def _cache_only=(value); end
    def _cache_only?; end
    def _cache_options; end
    def _cache_options=(value); end
    def _cache_options?; end
  end

  module GeneratedInstanceMethods; end
end

ActiveModel::Serializer::Caching::CALLER_FILE = T.let(T.unsafe(nil), Regexp)

module ActiveModel::Serializer::Caching::ClassMethods
  def _attributes_keys; end
  def _cache_digest; end
  def _skip_digest?; end
  def cache(options = T.unsafe(nil)); end
  def cache_enabled?; end
  def cache_read_multi(collection_serializer, adapter_instance, include_directive); end
  def cache_store; end
  def digest_caller_file(caller_line); end
  def fragment_cache_enabled?; end
  def fragmented_attributes; end
  def inherited(base); end
  def object_cache_key(serializer, adapter_instance); end
  def object_cache_keys(collection_serializer, adapter_instance, include_directive); end
  def perform_caching; end
  def perform_caching?; end
end

class ActiveModel::Serializer::CollectionSerializer
  include ::Enumerable

  def initialize(resources, options = T.unsafe(nil)); end

  def each(*_arg0, &_arg1); end
  def json_key; end
  def object; end
  def paginated?; end
  def root; end
  def serializable_hash(adapter_options, options, adapter_instance); end
  def success?; end

  protected

  def options; end
  def serializers; end

  private

  def raise_cannot_infer_root_key_error?; end
  def serializer_from_resource(resource, serializer_context_class, options); end
  def serializers_from_resources; end
end

class ActiveModel::Serializer::CollectionSerializer::CannotInferRootKeyError < ::StandardError; end

class ActiveModel::Serializer::ErrorSerializer < ::ActiveModel::Serializer
  def as_json; end
  def success?; end
end

class ActiveModel::Serializer::ErrorsSerializer
  include ::Enumerable

  def initialize(resources, options = T.unsafe(nil)); end

  def each(*_arg0, &_arg1); end
  def json_key; end
  def object; end
  def root; end
  def success?; end

  protected

  def serializers; end
end

class ActiveModel::Serializer::Field < ::Struct
  def initialize(*_arg0); end

  def block; end
  def block=(_); end
  def excluded?(serializer); end
  def name; end
  def name=(_); end
  def options; end
  def options=(_); end
  def value(serializer); end

  private

  def condition; end
  def condition_type; end
  def evaluate_condition(serializer); end
  def validate_condition!; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class ActiveModel::Serializer::Fieldset
  def initialize(fields); end

  def fields; end
  def fields_for(type); end

  protected

  def raw_fields; end

  private

  def parsed_fields; end
end

class ActiveModel::Serializer::HasManyReflection < ::ActiveModel::Serializer::Reflection
  def collection?; end
end

class ActiveModel::Serializer::HasOneReflection < ::ActiveModel::Serializer::Reflection; end

class ActiveModel::Serializer::LazyAssociation < ::Struct
  def association_options; end
  def association_options=(_); end
  def collection?(*_arg0, &_arg1); end
  def eval_reflection_block; end
  def include_data?; end
  def object; end
  def reflection; end
  def reflection=(_); end
  def reflection_options; end
  def serializer; end
  def serializer_class; end
  def virtual_value; end

  private

  def cached_result; end
  def instantiate_collection_serializer(object); end
  def instantiate_serializer(object); end
  def namespace; end
  def serialize_object!(object); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
  end
end

class ActiveModel::Serializer::Link < ::ActiveModel::Serializer::Field; end
module ActiveModel::Serializer::Lint; end

module ActiveModel::Serializer::Lint::Tests
  def test_active_model_errors; end
  def test_active_model_errors_human_attribute_name; end
  def test_active_model_errors_lookup_ancestors; end
  def test_as_json; end
  def test_cache_key; end
  def test_id; end
  def test_model_name; end
  def test_read_attribute_for_serialization; end
  def test_serializable_hash; end
  def test_to_json; end
  def test_updated_at; end

  private

  def assert_instance_of(result, name); end
  def resource; end
end

class ActiveModel::Serializer::Null < ::ActiveModel::Serializer
  def associations(*_arg0); end
  def attributes(*_arg0); end
  def serializable_hash(*_arg0); end

  class << self
    def _attributes_data; end
    def _cache_digest_file_path; end
    def _links; end
    def _reflections; end
  end
end

ActiveModel::Serializer::REFLECTION_OPTIONS = T.let(T.unsafe(nil), Array)

class ActiveModel::Serializer::Reflection < ::ActiveModel::Serializer::Field
  def initialize(*_arg0); end

  def build_association(parent_serializer, parent_serializer_options, include_slice = T.unsafe(nil)); end
  def collection?; end
  def foreign_key; end
  def foreign_key_on; end
  def include_data(value = T.unsafe(nil)); end
  def include_data?(include_slice); end
  def link(name, value = T.unsafe(nil), &block); end
  def meta(value = T.unsafe(nil), &block); end
  def type; end
  def value(serializer, include_slice); end

  protected

  def object; end
  def object=(_arg0); end
  def scope; end
  def scope=(_arg0); end
end

ActiveModel::Serializer::SERIALIZABLE_HASH_VALID_KEYS = T.let(T.unsafe(nil), Array)
class ActiveModel::Serializer::UndefinedCacheKey < ::StandardError; end
ActiveModel::Serializer::VERSION = T.let(T.unsafe(nil), String)

module ActiveModelSerializers
  extend ::ActiveSupport::Autoload

  class << self
    def config; end
    def default_include_directive; end
    def eager_load!; end
    def location_of_caller; end
    def logger; end
    def logger=(_arg0); end
    def silence_warnings; end
  end
end

module ActiveModelSerializers::Adapter
  extend ::ActiveSupport::Autoload

  class << self
    def adapter_class(adapter); end
    def adapter_map; end
    def adapters; end
    def configured_adapter; end
    def create(resource, options = T.unsafe(nil)); end
    def lookup(adapter); end
    def new(*args); end
    def register(name, klass = T.unsafe(nil)); end
    def registered_name(adapter_class); end

    private

    def find_by_name(adapter_name); end
  end
end

ActiveModelSerializers::Adapter::ADAPTER_MAP = T.let(T.unsafe(nil), Hash)

class ActiveModelSerializers::Adapter::Attributes < ::ActiveModelSerializers::Adapter::Base
  def initialize(*_arg0); end

  def serializable_hash(options = T.unsafe(nil)); end

  private

  def fields_to_fieldset(fields); end
end

class ActiveModelSerializers::Adapter::Base
  def initialize(serializer, options = T.unsafe(nil)); end

  def as_json(options = T.unsafe(nil)); end
  def cache_key; end
  def fragment_cache(cached_hash, non_cached_hash); end
  def instance_options; end
  def serializable_hash(_options = T.unsafe(nil)); end
  def serializer; end

  private

  def root; end
  def serialization_options(options); end

  class << self
    def cache_key; end
    def default_key_transform; end
    def fragment_cache(cached_hash, non_cached_hash); end
    def inherited(subclass); end
    def transform(options); end
    def transform_key_casing!(value, options); end
  end
end

class ActiveModelSerializers::Adapter::Json < ::ActiveModelSerializers::Adapter::Base
  def meta; end
  def meta_key; end
  def serializable_hash(options = T.unsafe(nil)); end
end

class ActiveModelSerializers::Adapter::JsonApi < ::ActiveModelSerializers::Adapter::Base
  extend ::ActiveSupport::Autoload

  def initialize(serializer, options = T.unsafe(nil)); end

  def failure_document; end
  def fragment_cache(cached_hash, non_cached_hash); end
  def serializable_hash(*_arg0); end
  def success_document; end

  protected

  def fieldset; end

  private

  def attributes_for(serializer, fields); end
  def data_for(serializer, include_slice); end
  def links_for(serializer); end
  def meta_for(serializer); end
  def pagination_links_for(serializer); end
  def process_relationship(serializer, include_slice); end
  def process_relationships(serializer, include_slice); end
  def process_resource(serializer, primary, include_slice = T.unsafe(nil)); end
  def relationships_for(serializer, requested_associations, include_slice); end
  def resource_object_for(serializer, include_slice = T.unsafe(nil)); end
  def resource_objects_for(serializers); end

  class << self
    def default_key_transform; end
    def fragment_cache(cached_hash, non_cached_hash, root = T.unsafe(nil)); end
  end
end

module ActiveModelSerializers::Adapter::JsonApi::Deserialization
  private

  def field_key(field, options); end
  def filter_fields(fields, options); end
  def parse(document, options = T.unsafe(nil)); end
  def parse!(document, options = T.unsafe(nil)); end
  def parse_attributes(attributes, options); end
  def parse_relationship(assoc_name, assoc_data, options); end
  def parse_relationships(relationships, options); end
  def transform_keys(hash, options); end
  def validate_payload(payload); end

  class << self
    def field_key(field, options); end
    def filter_fields(fields, options); end
    def parse(document, options = T.unsafe(nil)); end
    def parse!(document, options = T.unsafe(nil)); end
    def parse_attributes(attributes, options); end
    def parse_relationship(assoc_name, assoc_data, options); end
    def parse_relationships(relationships, options); end
    def transform_keys(hash, options); end
    def validate_payload(payload); end
  end
end

class ActiveModelSerializers::Adapter::JsonApi::Deserialization::InvalidDocument < ::ArgumentError; end

module ActiveModelSerializers::Adapter::JsonApi::Error
  class << self
    def attribute_error_objects(attribute_name, attribute_errors); end
    def error_source(source_type, attribute_name); end
    def resource_errors(error_serializer, options); end
  end
end

class ActiveModelSerializers::Adapter::JsonApi::Error::UnknownSourceTypeError < ::ArgumentError; end

module ActiveModelSerializers::Adapter::JsonApi::Jsonapi
  private

  def add!(hash); end
  def include_object?; end
  def object; end

  class << self
    def add!(hash); end
    def include_object?; end
    def object; end
  end
end

class ActiveModelSerializers::Adapter::JsonApi::Link
  include ::ActiveModelSerializers::SerializationContext::UrlHelpers

  def initialize(serializer, value); end

  def as_json; end
  def href(value); end
  def meta(value); end

  protected

  def object; end
  def scope; end
end

class ActiveModelSerializers::Adapter::JsonApi::Meta
  def initialize(serializer); end

  def as_json; end

  protected

  def object; end
  def scope; end
end

class ActiveModelSerializers::Adapter::JsonApi::PaginationLinks
  def initialize(collection, adapter_options); end

  def as_json; end
  def collection; end
  def context; end

  protected

  def adapter_options; end

  private

  def first_page_url; end
  def last_page_url; end
  def location_url; end
  def next_page_url; end
  def per_page; end
  def prev_page_url; end
  def query_parameters; end
  def request_url; end
  def url(options = T.unsafe(nil)); end
  def url_for_page(number); end
end

ActiveModelSerializers::Adapter::JsonApi::PaginationLinks::FIRST_PAGE = T.let(T.unsafe(nil), Integer)
class ActiveModelSerializers::Adapter::JsonApi::PaginationLinks::MissingSerializationContextError < ::KeyError; end

class ActiveModelSerializers::Adapter::JsonApi::Relationship
  def initialize(parent_serializer, serializable_resource_options, association); end

  def as_json; end

  protected

  def association; end
  def parent_serializer; end
  def serializable_resource_options; end

  private

  def belongs_to_id_on_self?(association); end
  def data_for(association); end
  def data_for_many(association); end
  def data_for_one(association); end
  def links_for(association); end
  def meta_for(association); end
end

class ActiveModelSerializers::Adapter::JsonApi::ResourceIdentifier
  def initialize(serializer, options); end

  def as_json; end

  protected

  def id; end
  def type; end

  private

  def id_for(serializer); end
  def type_for(serializer, transform_options); end

  class << self
    def for_type_with_id(type, id, options); end
    def inflect_type(type); end
    def raw_type_from_serializer_object(object); end
    def type_for(serializer, serializer_type = T.unsafe(nil), transform_options = T.unsafe(nil)); end
  end
end

class ActiveModelSerializers::Adapter::Null < ::ActiveModelSerializers::Adapter::Base
  def serializable_hash(*_arg0); end
end

class ActiveModelSerializers::Adapter::UnknownAdapterError < ::ArgumentError; end

module ActiveModelSerializers::Callbacks
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActiveSupport::Callbacks

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveSupport::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::DescendantsTracker
  mixes_in_class_methods ::ActiveModelSerializers::Callbacks::ClassMethods

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

module ActiveModelSerializers::Callbacks::ClassMethods
  def around_render(*filters, &blk); end
end

module ActiveModelSerializers::Deprecate
  private

  def delegate_and_deprecate(method, delegee); end
  def deprecate(name, replacement); end

  class << self
    def delegate_and_deprecate(method, delegee); end
    def deprecate(name, replacement); end
  end
end

module ActiveModelSerializers::Deserialization
  private

  def jsonapi_parse(*args); end
  def jsonapi_parse!(*args); end

  class << self
    def jsonapi_parse(*args); end
    def jsonapi_parse!(*args); end
  end
end

module ActiveModelSerializers::JsonPointer
  private

  def new(pointer_type, value = T.unsafe(nil)); end

  class << self
    def new(pointer_type, value = T.unsafe(nil)); end
  end
end

ActiveModelSerializers::JsonPointer::POINTERS = T.let(T.unsafe(nil), Hash)

module ActiveModelSerializers::Logging
  extend ::ActiveSupport::Concern
  include GeneratedInstanceMethods
  include ::ActiveSupport::Callbacks
  include ::ActiveModelSerializers::Callbacks

  mixes_in_class_methods GeneratedClassMethods
  mixes_in_class_methods ::ActiveModelSerializers::Logging::ClassMethods
  mixes_in_class_methods ::ActiveSupport::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveSupport::DescendantsTracker
  mixes_in_class_methods ::ActiveModelSerializers::Callbacks::ClassMethods
  mixes_in_class_methods ::ActiveModelSerializers::Logging::Macros

  def notify_render(*_arg0); end
  def notify_render_payload; end

  private

  def logger_tagged_by_active_model_serializers?; end
  def tag_logger(*tags); end

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

module ActiveModelSerializers::Logging::ClassMethods
  def instrument_rendering; end
end

class ActiveModelSerializers::Logging::LogSubscriber < ::ActiveSupport::LogSubscriber
  def logger; end
  def render(event); end
end

module ActiveModelSerializers::Logging::Macros
  def notify(name, callback_name); end
end

ActiveModelSerializers::Logging::RENDER_EVENT = T.let(T.unsafe(nil), String)

module ActiveModelSerializers::LookupChain
  private

  def namespace_for(klass); end
  def resource_class_name(klass); end
  def serializer_from(klass); end
  def serializer_from_resource_name(name); end

  class << self
    def namespace_for(klass); end
    def resource_class_name(klass); end
    def serializer_from(klass); end
    def serializer_from_resource_name(name); end
  end
end

ActiveModelSerializers::LookupChain::BY_NAMESPACE = T.let(T.unsafe(nil), Proc)
ActiveModelSerializers::LookupChain::BY_PARENT_SERIALIZER = T.let(T.unsafe(nil), Proc)
ActiveModelSerializers::LookupChain::BY_RESOURCE = T.let(T.unsafe(nil), Proc)
ActiveModelSerializers::LookupChain::BY_RESOURCE_NAMESPACE = T.let(T.unsafe(nil), Proc)
ActiveModelSerializers::LookupChain::DEFAULT = T.let(T.unsafe(nil), Array)

class ActiveModelSerializers::Model
  include ::ActiveModel::Serialization
  include ::ActiveModel::Serializers::JSON
  include ::ActiveModel::Validations
  include ::ActiveSupport::Callbacks
  include ::ActiveModel::Validations::HelperMethods
  include ::ActiveModel::Conversion
  include ::ActiveModel::ForbiddenAttributesProtection
  include ::ActiveModel::AttributeAssignment
  include ::ActiveModel::Model
  extend ::ActiveModel::Naming
  extend ::ActiveModel::Validations::ClassMethods
  extend ::ActiveModel::Callbacks
  extend ::ActiveSupport::Callbacks::ClassMethods
  extend ::ActiveSupport::DescendantsTracker
  extend ::ActiveModel::Translation
  extend ::ActiveModel::Validations::HelperMethods
  extend ::ActiveModel::Conversion::ClassMethods

  def initialize(attributes = T.unsafe(nil)); end

  def __callbacks; end
  def __callbacks?; end
  def _run_validate_callbacks(&block); end
  def _validate_callbacks; end
  def _validators; end
  def _validators?; end
  def attributes; end
  def cache_key; end
  def errors; end
  def id; end
  def include_root_in_json; end
  def include_root_in_json?; end
  def model_name(*_arg0, &_arg1); end
  def updated_at; end
  def updated_at=(_arg0); end
  def validation_context; end

  private

  def validation_context=(_arg0); end

  class << self
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
    def _validate_callbacks; end
    def _validate_callbacks=(value); end
    def _validators; end
    def _validators=(value); end
    def _validators?; end
    def attribute_names; end
    def attribute_names=(value); end
    def attribute_names?; end
    def attributes(*names); end
    def derive_attributes_from_names_and_fix_accessors; end
    def include_root_in_json; end
    def include_root_in_json=(value); end
    def include_root_in_json?; end
  end
end

module ActiveModelSerializers::Model::DeriveAttributesFromNamesAndFixAccessors
  def attributes; end

  class << self
    def included(base); end
  end
end

class ActiveModelSerializers::Railtie < ::Rails::Railtie; end

class ActiveModelSerializers::SerializableResource
  include ::ActiveModelSerializers::Logging
  include ::ActiveSupport::Callbacks
  include ::ActiveModelSerializers::Callbacks
  extend ::ActiveModelSerializers::Logging::ClassMethods
  extend ::ActiveSupport::Callbacks::ClassMethods
  extend ::ActiveSupport::DescendantsTracker
  extend ::ActiveModelSerializers::Callbacks::ClassMethods
  extend ::ActiveModelSerializers::Logging::Macros

  def initialize(resource, options = T.unsafe(nil)); end

  def __callbacks; end
  def __callbacks?; end
  def _notifying_render_as_json(*_arg0, &_arg1); end
  def _notifying_render_serializable_hash(*_arg0, &_arg1); end
  def _notifying_render_to_json(*_arg0, &_arg1); end
  def _render_callbacks; end
  def _run_render_callbacks(&block); end
  def adapter; end
  def adapter_instance; end
  def as_json(*args, &block); end
  def find_adapter; end
  def serializable_hash(*args, &block); end
  def serialization_scope; end
  def serialization_scope=(scope); end
  def serialization_scope_name=(scope_name); end
  def serializer; end
  def serializer?; end
  def serializer_class; end
  def serializer_instance; end
  def to_json(*args, &block); end
  def use_adapter?; end

  protected

  def adapter_opts; end
  def resource; end
  def serializer_opts; end

  class << self
    def __callbacks; end
    def __callbacks=(value); end
    def __callbacks?; end
    def _render_callbacks; end
    def _render_callbacks=(value); end
  end
end

ActiveModelSerializers::SerializableResource::ADAPTER_OPTION_KEYS = T.let(T.unsafe(nil), Set)

class ActiveModelSerializers::SerializationContext
  def initialize(*args); end

  def key_transform; end
  def query_parameters; end
  def request_url; end

  class << self
    def default_url_options; end
    def default_url_options=(_arg0); end
    def url_helpers; end
    def url_helpers=(_arg0); end
  end
end

module ActiveModelSerializers::SerializationContext::UrlHelpers
  def default_url_options; end

  class << self
    def included(base); end
  end
end

module ActiveModelSerializers::Test
  extend ::ActiveSupport::Autoload
end

module ActiveModelSerializers::Test::Schema
  def assert_request_response_schema(schema_path = T.unsafe(nil), message = T.unsafe(nil)); end
  def assert_request_schema(schema_path = T.unsafe(nil), message = T.unsafe(nil)); end
  def assert_response_schema(schema_path = T.unsafe(nil), message = T.unsafe(nil)); end
  def assert_schema(payload, schema_path = T.unsafe(nil), message = T.unsafe(nil)); end
end

class ActiveModelSerializers::Test::Schema::AssertRequestSchema < ::ActiveModelSerializers::Test::Schema::AssertSchema
  def initialize(*_arg0); end
end

class ActiveModelSerializers::Test::Schema::AssertResponseSchema < ::ActiveModelSerializers::Test::Schema::AssertSchema
  def initialize(*_arg0); end
end

class ActiveModelSerializers::Test::Schema::AssertSchema
  def initialize(schema_path, request, response, message, payload = T.unsafe(nil)); end

  def call; end
  def message; end
  def payload; end
  def request; end
  def response; end
  def schema_path; end

  protected

  def action; end
  def add_schema_to_document_store; end
  def controller_path; end
  def document_store; end
  def json_schema; end
  def load_json(json); end
  def load_json_file(path); end
  def request_params; end
  def require_json_schema!; end
  def response_body; end
  def schema_data; end
  def schema_directory; end
  def schema_full_path; end
  def schema_path_default; end
end

class ActiveModelSerializers::Test::Schema::InvalidSchemaError < ::Minitest::Assertion; end
class ActiveModelSerializers::Test::Schema::MissingSchema < ::Minitest::Assertion; end

module ActiveModelSerializers::Test::Serializer
  extend ::ActiveSupport::Concern

  def assert_serializer(expectation, message = T.unsafe(nil)); end

  private

  def setup_serialization_subscriptions; end
  def teardown_serialization_subscriptions; end
end

class ActiveModelSerializers::Test::Serializer::AssertSerializer
  def initialize; end

  def expectation; end
  def expectation=(_arg0); end
  def matches?; end
  def message; end
  def message=(message); end
  def response; end
  def response=(_arg0); end
  def serializers; end
  def subscribe; end
  def unsubscribe; end

  private

  def a_serializer?; end
  def event_name; end
  def matches_class?; end
  def matches_nil?; end
  def matches_regexp?; end
  def matches_string?; end
  def matches_symbol?; end
end
