# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `bindata` gem.
# Please instead update this file by running `bin/tapioca gem bindata`.

module BinData
  extend ::BinData::BitFieldFactory
  extend ::BinData::IntFactory

  private

  def trace_message; end
  def trace_reading(io = T.unsafe(nil)); end

  class << self
    def trace_message; end
    def trace_reading(io = T.unsafe(nil)); end
  end
end

module BinData::AcceptedParametersPlugin
  def accepted_parameters; end
  def default_parameter(*args); end
  def default_parameters(*args); end
  def mandatory_parameter(*args); end
  def mandatory_parameters(*args); end
  def mutually_exclusive_parameters(*args); end
  def optional_parameter(*args); end
  def optional_parameters(*args); end
end

class BinData::AcceptedParametersPlugin::AcceptedParameters
  def initialize(ancestor_parameters = T.unsafe(nil)); end

  def all; end
  def default(args = T.unsafe(nil)); end
  def mandatory(*args); end
  def mutually_exclusive(*args); end
  def optional(*args); end

  private

  def ensure_valid_names(names); end
  def to_syms(args); end

  class << self
    def invalid_parameter_names; end
  end
end

class BinData::Array < ::BinData::Base
  include ::Enumerable
  extend ::BinData::DSLMixin

  def <<(*args); end
  def [](arg1, arg2 = T.unsafe(nil)); end
  def []=(index, value); end
  def assign(array); end
  def at(index); end
  def clear?; end
  def concat(array); end
  def debug_name_of(child); end
  def do_num_bytes; end
  def do_write(io); end
  def each; end
  def empty?; end
  def find_index(obj); end
  def find_index_of(obj); end
  def first(n = T.unsafe(nil)); end
  def index(obj); end
  def initialize_instance; end
  def initialize_shared_instance; end
  def insert(index, *objs); end
  def last(n = T.unsafe(nil)); end
  def length; end
  def offset_of(child); end
  def push(*args); end
  def size; end
  def slice(arg1, arg2 = T.unsafe(nil)); end
  def snapshot; end
  def to_ary; end
  def unshift(*args); end

  private

  def append_new_element; end
  def elements; end
  def extend_array(max_index); end
  def new_element; end
  def slice_index(index); end
  def slice_range(range); end
  def slice_start_length(start, length); end
  def sum_num_bytes_below_index(index); end
  def sum_num_bytes_for_all_elements; end
end

class BinData::ArrayArgProcessor < ::BinData::BaseArgProcessor
  def sanitize_parameters!(obj_class, params); end
end

class BinData::Base
  include ::BinData::Framework
  include ::BinData::RegisterNamePlugin
  extend ::BinData::AcceptedParametersPlugin

  def initialize(*args); end

  def ==(other); end
  def =~(other); end
  def abs_offset; end
  def base_respond_to?(*_arg0); end
  def clear; end
  def debug_name; end
  def eval_parameter(key, overrides = T.unsafe(nil)); end
  def get_parameter(key); end
  def has_parameter?(key); end
  def initialize_instance(*args); end
  def initialize_with_warning(*args); end
  def inspect; end
  def lazy_evaluator; end
  def new(value = T.unsafe(nil), parent = T.unsafe(nil)); end
  def num_bytes; end
  def parent; end
  def pretty_print(pp); end
  def read(io, &block); end
  def rel_offset; end
  def safe_respond_to?(symbol, include_private = T.unsafe(nil)); end
  def to_binary_s(&block); end
  def to_hex(&block); end
  def to_s; end
  def write(io, &block); end

  protected

  def parent=(_arg0); end

  private

  def binary_string(str); end
  def extract_args(args); end
  def initialize_without_warning(*args); end
  def reading?; end
  def start_read; end
  def top_level; end
  def top_level_get(sym); end
  def top_level_set(sym, value); end

  class << self
    def arg_processor(name = T.unsafe(nil)); end
    def auto_call_delayed_io; end
    def bindata_name; end
    def inherited(subclass); end
    def read(io, *args, &block); end

    private

    def register_subclasses; end
    def unregister_self; end
  end
end

module BinData::Base::AutoCallDelayedIO
  def initialize_shared_instance; end
  def num_bytes; end
  def read(io); end
  def write(io, *_); end
end

class BinData::BaseArgProcessor
  def extract_args(obj_class, obj_args); end
  def sanitize_parameters!(obj_class, obj_params); end
  def separate_args(_obj_class, obj_args); end
end

class BinData::BasePrimitive < ::BinData::Base
  def <=>(other); end
  def assign(val); end
  def clear?; end
  def do_num_bytes; end
  def do_read(io); end
  def do_read_with_hook(io); end
  def do_write(io); end
  def eql?(other); end
  def hash; end
  def initialize_instance; end
  def initialize_shared_instance; end
  def method_missing(symbol, *args, &block); end
  def respond_to?(symbol, include_private = T.unsafe(nil)); end
  def snapshot; end
  def trace_value; end
  def value; end
  def value=(val); end

  private

  def _value; end
  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end

  class << self
    def bit_aligned; end
    def inherited(subclass); end
    def turn_off_tracing; end
    def turn_on_tracing; end
  end
end

module BinData::BasePrimitive::AssertPlugin
  def assert!; end
  def assign(val); end
  def do_read(io); end
end

module BinData::BasePrimitive::AssertedValuePlugin
  def _value; end
  def assert!; end
  def assert_value(current_value); end
  def assign(val); end
  def do_read(io); end
end

module BinData::BasePrimitive::InitialValuePlugin
  def _value; end
end

module BinData::BasePrimitive::ValuePlugin
  def _value; end
  def assign(val); end
end

class BinData::Bit < ::BinData::BasePrimitive
  def assign(val); end
  def bit_aligned?; end
  def do_num_bytes; end
  def do_write(io); end

  private

  def read_and_return_value(io); end
  def sensible_default; end
end

class BinData::Bit1 < ::BinData::BasePrimitive
  def assign(val); end
  def bit_aligned?; end
  def do_num_bytes; end
  def do_write(io); end

  private

  def read_and_return_value(io); end
  def sensible_default; end
end

class BinData::Bit16 < ::BinData::BasePrimitive
  def assign(val); end
  def bit_aligned?; end
  def do_num_bytes; end
  def do_write(io); end

  private

  def read_and_return_value(io); end
  def sensible_default; end
end

class BinData::Bit32 < ::BinData::BasePrimitive
  def assign(val); end
  def bit_aligned?; end
  def do_num_bytes; end
  def do_write(io); end

  private

  def read_and_return_value(io); end
  def sensible_default; end
end

module BinData::BitAligned
  def bit_aligned?; end
  def do_num_bytes; end
  def do_write(io); end
  def read_and_return_value(io); end
end

class BinData::BitAligned::BitAlignedIO
  def initialize(io); end

  def readbytes(n); end
end

module BinData::BitField
  class << self
    def create_clamp_code(nbits, signed); end
    def create_do_num_bytes_code(nbits); end
    def create_dynamic_clamp_code(signed); end
    def create_fixed_clamp_code(nbits, signed); end
    def create_int2uint_code(nbits, signed); end
    def create_nbits_code(nbits); end
    def create_params_code(nbits); end
    def create_uint2int_code(nbits, signed); end
    def define_class(name, nbits, endian, signed = T.unsafe(nil)); end
    def define_methods(bit_class, nbits, endian, signed); end
  end
end

module BinData::BitFieldFactory
  def const_missing(name); end
end

class BinData::BitLe < ::BinData::BasePrimitive
  def assign(val); end
  def bit_aligned?; end
  def do_num_bytes; end
  def do_write(io); end

  private

  def read_and_return_value(io); end
  def sensible_default; end
end

class BinData::Buffer < ::BinData::Base
  extend ::BinData::DSLMixin

  def assign(val); end
  def clear?; end
  def do_num_bytes; end
  def do_read(io); end
  def do_write(io); end
  def initialize_instance; end
  def method_missing(symbol, *args, &block); end
  def raw_num_bytes; end
  def respond_to?(symbol, include_private = T.unsafe(nil)); end
  def snapshot; end
end

class BinData::BufferArgProcessor < ::BinData::BaseArgProcessor
  include ::BinData::MultiFieldArgSeparator

  def sanitize_parameters!(obj_class, params); end
end

module BinData::ByteAlignPlugin
  def align_obj?(obj); end
  def bytes_to_align(obj, rel_offset); end
  def do_read(io); end
  def do_write(io); end
  def sum_num_bytes_below_index(index); end
end

class BinData::Choice < ::BinData::Base
  extend ::BinData::DSLMixin

  def assign(*args); end
  def clear?(*args); end
  def do_num_bytes(*args); end
  def do_read(*args); end
  def do_read_with_hook(io); end
  def do_write(*args); end
  def initialize_instance; end
  def initialize_shared_instance; end
  def method_missing(symbol, *args, &block); end
  def respond_to?(symbol, include_private = T.unsafe(nil)); end
  def selection; end
  def snapshot(*args); end
  def trace_selection; end

  private

  def current_choice; end
  def instantiate_choice(selection); end

  class << self
    def turn_off_tracing; end
    def turn_on_tracing; end
  end
end

class BinData::ChoiceArgProcessor < ::BinData::BaseArgProcessor
  def sanitize_parameters!(obj_class, params); end

  private

  def choices_as_hash(choices); end
  def ensure_valid_keys(choices); end
  def key_array_by_index(array); end
end

module BinData::CopyOnChangePlugin
  def copy_previous_value(obj); end
  def current_choice; end
  def get_previous_choice(selection); end
  def remember_current_selection(selection); end
end

class BinData::CountBytesRemaining < ::BinData::BasePrimitive
  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

module BinData::DSLMixin
  def dsl_parser(parser_type = T.unsafe(nil)); end
  def method_missing(symbol, *args, &block); end
  def to_ary; end
  def to_str; end
end

class BinData::DSLMixin::DSLBigAndLittleEndianHandler
  class << self
    def class_with_endian(class_name, endian); end
    def create_subclasses_with_endian(bnl_class); end
    def delegate_field_creation(bnl_class); end
    def fixup_subclass_hierarchy(bnl_class); end
    def handle(bnl_class); end
    def make_class_abstract(bnl_class); end
    def obj_attribute(obj, attr); end
    def override_new_in_class(bnl_class); end
  end
end

class BinData::DSLMixin::DSLFieldParser
  def initialize(hints, symbol, *args, &block); end

  def name; end
  def name_from_field_declaration(args); end
  def params; end
  def params_from_args(args); end
  def params_from_block(&block); end
  def params_from_field_declaration(args, &block); end
  def type; end
end

class BinData::DSLMixin::DSLFieldValidator
  def initialize(the_class, parser); end

  def all_or_none_names_failed?(name); end
  def duplicate_name?(name); end
  def ensure_valid_name(name); end
  def fields; end
  def malformed_name?(name); end
  def must_have_a_name_failed?(name); end
  def must_not_have_a_name_failed?(name); end
  def name_is_reserved?(name); end
  def name_shadows_method?(name); end
  def option?(opt); end
  def validate_field(name); end
end

class BinData::DSLMixin::DSLParser
  def initialize(the_class, parser_type); end

  def dsl_params; end
  def endian(endian = T.unsafe(nil)); end
  def fields; end
  def hide(*args); end
  def method_missing(*args, &block); end
  def parser_type; end
  def search_prefix(*args); end

  private

  def append_field(type, name, params); end
  def dsl_raise(exception, msg); end
  def ensure_hints; end
  def fields?; end
  def hints; end
  def option?(opt); end
  def parent_attribute(attr, default = T.unsafe(nil)); end
  def parent_fields; end
  def parse_and_append_field(*args, &block); end
  def parser_abilities; end
  def set_endian(endian); end
  def to_choice_params(key); end
  def to_object_params(key); end
  def to_struct_params(*unused); end
  def valid_endian?(endian); end
end

class BinData::DelayedIO < ::BinData::Base
  extend ::BinData::DSLMixin

  def abs_offset; end
  def abs_offset=(offset); end
  def assign(val); end
  def clear?; end
  def do_num_bytes; end
  def do_read(io); end
  def do_write(io); end
  def initialize_instance; end
  def method_missing(symbol, *args, &block); end
  def num_bytes; end
  def read_now!; end
  def rel_offset; end
  def respond_to?(symbol, include_private = T.unsafe(nil)); end
  def snapshot; end
  def write_now!; end
end

class BinData::DelayedIoArgProcessor < ::BinData::BaseArgProcessor
  include ::BinData::MultiFieldArgSeparator

  def sanitize_parameters!(obj_class, params); end
end

class BinData::DoubleBe < ::BinData::BasePrimitive
  def do_num_bytes; end

  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

class BinData::DoubleLe < ::BinData::BasePrimitive
  def do_num_bytes; end

  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

class BinData::FloatBe < ::BinData::BasePrimitive
  def do_num_bytes; end

  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

class BinData::FloatLe < ::BinData::BasePrimitive
  def do_num_bytes; end

  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

module BinData::FloatingPoint
  class << self
    def create_num_bytes_code(precision); end
    def create_read_code(precision, endian); end
    def create_to_binary_s_code(precision, endian); end
    def define_methods(float_class, precision, endian); end
  end
end

module BinData::Framework
  def assign(val); end
  def bit_aligned?; end
  def clear?; end
  def debug_name_of(child); end
  def offset_of(child); end
  def snapshot; end

  protected

  def do_num_bytes; end
  def do_read(io); end
  def do_write(io); end
  def initialize_instance; end
  def initialize_shared_instance; end
end

module BinData::IO
  class << self
    def create_string_io(str = T.unsafe(nil)); end
  end
end

module BinData::IO::Common
  def initialize(io); end

  private

  def buffer_limited_n(n); end
  def seek(n); end
  def seekable?; end
  def with_buffer_common(n); end
end

module BinData::IO::Common::SeekableStream
  def num_bytes_remaining; end
  def with_readahead; end

  private

  def offset_raw; end
  def read_raw(n); end
  def seek_raw(n); end
  def stream_init; end
  def write_raw(data); end
end

module BinData::IO::Common::UnSeekableStream
  def num_bytes_remaining; end
  def offset_raw; end
  def with_readahead; end

  private

  def read_raw(n); end
  def read_raw_with_readahead(n); end
  def seek_raw(n); end
  def stream_init; end
  def write_raw(data); end
end

class BinData::IO::Read
  include ::BinData::IO::Common

  def initialize(io); end

  def offset; end
  def read_all_bytes; end
  def readbits(nbits, endian); end
  def readbytes(n); end
  def reset_read_bits; end
  def seekbytes(n); end
  def with_buffer(n); end

  private

  def accumulate_big_endian_bits; end
  def accumulate_little_endian_bits; end
  def mask(nbits); end
  def read(n = T.unsafe(nil)); end
  def read_big_endian_bits(nbits); end
  def read_little_endian_bits(nbits); end
end

class BinData::IO::Write
  include ::BinData::IO::Common

  def initialize(io); end

  def flush; end
  def flushbits; end
  def offset; end
  def seekbytes(n); end
  def with_buffer(n); end
  def writebits(val, nbits, endian); end
  def writebytes(str); end

  private

  def mask(nbits); end
  def write(data); end
  def write_big_endian_bits(val, nbits); end
  def write_little_endian_bits(val, nbits); end
end

module BinData::InitialLengthPlugin
  def do_read(io); end
  def elements; end
end

module BinData::Int
  class << self
    def define_class(name, nbits, endian, signed); end
    def define_methods(int_class, nbits, endian, signed); end

    private

    def bits_per_word(nbits); end
    def create_clamp_code(nbits, signed); end
    def create_int2uint_code(nbits); end
    def create_raw_read_code(nbits, endian, signed); end
    def create_read_assemble_code(nbits, endian, signed); end
    def create_read_code(nbits, endian, signed); end
    def create_read_unpack_code(nbits, endian, signed); end
    def create_to_binary_s_code(nbits, endian, signed); end
    def create_uint2int_code(nbits); end
    def need_signed_conversion_code?(nbits, signed); end
    def pack_directive(nbits, endian, signed); end
    def val_as_packed_words(nbits, endian, signed); end
  end
end

class BinData::Int8 < ::BinData::BasePrimitive
  def assign(val); end
  def do_num_bytes; end

  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

module BinData::IntFactory
  def const_missing(name); end
end

class BinData::LazyEvaluator
  def initialize(obj); end

  def index; end
  def lazy_eval(val, overrides = T.unsafe(nil)); end
  def method_missing(symbol, *args); end
  def parent; end

  private

  def callable?(obj); end
  def eval_symbol_in_parent_context(symbol, args); end
  def recursively_eval(val, args); end
  def resolve_symbol_in_parent_context(symbol, args); end
end

module BinData::MultiFieldArgSeparator
  def field_names_in_parameters?(obj_class, parameters); end
  def parameters_is_value?(obj_class, value, parameters); end
  def separate_args(obj_class, obj_args); end
end

class BinData::Primitive < ::BinData::BasePrimitive
  extend ::BinData::DSLMixin

  def assign(val); end
  def debug_name_of(child); end
  def do_num_bytes; end
  def do_write(io); end
  def initialize_instance; end
  def method_missing(symbol, *args, &block); end
  def respond_to?(symbol, include_private = T.unsafe(nil)); end

  private

  def get; end
  def read_and_return_value(io); end
  def sensible_default; end
  def set(v); end

  class << self
    def bit_aligned; end
  end
end

class BinData::PrimitiveArgProcessor < ::BinData::BaseArgProcessor
  def sanitize_parameters!(obj_class, params); end
end

module BinData::ReadUntilEOFPlugin
  def do_read(io); end
end

module BinData::ReadUntilPlugin
  def do_read(io); end
end

class BinData::Record < ::BinData::Struct
  extend ::BinData::DSLMixin

  class << self
    def inherited(subclass); end
  end
end

class BinData::RecordArgProcessor < ::BinData::StructArgProcessor
  include ::BinData::MultiFieldArgSeparator

  def sanitize_parameters!(obj_class, params); end
end

module BinData::RegisterNamePlugin
  def initialize_shared_instance; end

  class << self
    def included(base); end
  end
end

BinData::RegisteredClasses = T.let(T.unsafe(nil), BinData::Registry)

class BinData::Registry
  def initialize; end

  def lookup(name, hints = T.unsafe(nil)); end
  def register(name, class_to_register); end
  def underscore_name(name); end
  def unregister(name); end

  private

  def name_with_endian(name, endian); end
  def name_with_prefix(name, prefix); end
  def normalize_name(name, hints); end
  def register_dynamic_class(name); end
  def registered?(name); end
  def warn_if_name_is_already_registered(name, class_to_register); end
end

class BinData::Rest < ::BinData::BasePrimitive
  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

class BinData::ResumeByteAlignment < ::BinData::Base
  def assign(val); end
  def clear?; end
  def do_num_bytes; end
  def do_read(io); end
  def do_write(io); end
  def snapshot; end
end

class BinData::SanitizedBigEndian < ::BinData::SanitizedParameter
  def endian; end
end

class BinData::SanitizedChoices < ::BinData::SanitizedParameter
  def initialize(choices, hints); end

  def [](key); end
end

class BinData::SanitizedField < ::BinData::SanitizedParameter
  def initialize(name, field_type, field_params, hints); end

  def has_parameter?(param); end
  def instantiate(value = T.unsafe(nil), parent = T.unsafe(nil)); end
  def name; end
  def name_as_sym; end
  def prototype; end
end

class BinData::SanitizedFields < ::BinData::SanitizedParameter
  include ::Enumerable

  def initialize(hints, base_fields = T.unsafe(nil)); end

  def [](idx); end
  def add_field(type, name, params); end
  def all_field_names_blank?; end
  def any_field_has_parameter?(parameter); end
  def each(&block); end
  def empty?; end
  def field_name?(name); end
  def field_names; end
  def length; end
  def no_field_names_blank?; end
  def raw_fields; end
end

class BinData::SanitizedLittleEndian < ::BinData::SanitizedParameter
  def endian; end
end

class BinData::SanitizedParameter; end

class BinData::SanitizedParameters < ::Hash
  def initialize(parameters, the_class, hints); end

  def create_sanitized_params(params, the_class); end
  def has_at_least_one_of?(*keys); end
  def has_parameter?(_arg0); end
  def hints; end
  def must_be_integer(*keys); end
  def rename_parameter(old_key, new_key); end
  def sanitize(key, &block); end
  def sanitize_choices(key, &block); end
  def sanitize_endian(key); end
  def sanitize_fields(key, &block); end
  def sanitize_object_prototype(key); end
  def warn_replacement_parameter(bad_key, suggested_key); end

  private

  def create_sanitized_choices(choices); end
  def create_sanitized_endian(endian); end
  def create_sanitized_fields; end
  def create_sanitized_object_prototype(obj_type, obj_params); end
  def ensure_mandatory_parameters_exist; end
  def ensure_mutual_exclusion_of_parameters; end
  def ensure_no_nil_values; end
  def merge_default_parameters!; end
  def needs_sanitizing?(key); end
  def sanitize!; end

  class << self
    def sanitize(parameters, the_class); end
  end
end

BinData::SanitizedParameters::BIG_ENDIAN = T.let(T.unsafe(nil), BinData::SanitizedBigEndian)
BinData::SanitizedParameters::LITTLE_ENDIAN = T.let(T.unsafe(nil), BinData::SanitizedLittleEndian)

class BinData::SanitizedPrototype < ::BinData::SanitizedParameter
  def initialize(obj_type, obj_params, hints); end

  def has_parameter?(param); end
  def instantiate(value = T.unsafe(nil), parent = T.unsafe(nil)); end
end

class BinData::Sbit < ::BinData::BasePrimitive
  def assign(val); end
  def bit_aligned?; end
  def do_num_bytes; end
  def do_write(io); end

  private

  def read_and_return_value(io); end
  def sensible_default; end
end

class BinData::SbitLe < ::BinData::BasePrimitive
  def assign(val); end
  def bit_aligned?; end
  def do_num_bytes; end
  def do_write(io); end

  private

  def read_and_return_value(io); end
  def sensible_default; end
end

class BinData::Skip < ::BinData::BasePrimitive
  def initialize_shared_instance; end

  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

class BinData::SkipArgProcessor < ::BinData::BaseArgProcessor
  def sanitize_parameters!(obj_class, params); end
end

module BinData::SkipLengthPlugin
  def skip_length; end
end

module BinData::SkipToAbsOffsetPlugin
  def skip_length; end
end

module BinData::SkipUntilValidPlugin
  def read_and_return_value(io); end
  def skip_length; end
end

class BinData::String < ::BinData::BasePrimitive
  def assign(val); end
  def initialize_shared_instance; end
  def snapshot; end

  private

  def clamp_to_length(str); end
  def read_and_return_value(io); end
  def sensible_default; end
  def trim_padding(str); end
  def value_to_binary_string(val); end
end

class BinData::StringArgProcessor < ::BinData::BaseArgProcessor
  def sanitize_parameters!(obj_class, params); end

  private

  def sanitized_pad_byte(byte); end
end

class BinData::Stringz < ::BinData::BasePrimitive
  def assign(val); end
  def snapshot; end

  private

  def append_zero_byte_if_needed!(str); end
  def read_and_return_value(io); end
  def sensible_default; end
  def trim_and_zero_terminate(str); end
  def trim_to!(str, max_length = T.unsafe(nil)); end
  def truncate_after_first_zero_byte!(str); end
  def value_to_binary_string(val); end
end

class BinData::Struct < ::BinData::Base
  def [](key); end
  def []=(key, value); end
  def assign(val); end
  def clear; end
  def clear?; end
  def debug_name_of(child); end
  def do_num_bytes; end
  def do_read(io); end
  def do_write(io); end
  def each_pair; end
  def field_names(include_hidden = T.unsafe(nil)); end
  def has_key?(key); end
  def initialize_instance; end
  def initialize_shared_instance; end
  def key?(key); end
  def offset_of(child); end
  def snapshot; end

  private

  def as_stringified_hash(val); end
  def assign_fields(val); end
  def base_field_name(name); end
  def define_field_accessors; end
  def define_field_accessors_for(name, index); end
  def find_index_of(obj); end
  def find_obj_for_name(name); end
  def include_obj?(obj); end
  def instantiate_all_objs; end
  def instantiate_obj_at(index); end
  def sum_num_bytes_below_index(index); end
  def sum_num_bytes_for_all_fields; end

  class << self
    def inherited(subclass); end
  end
end

BinData::Struct::RESERVED = T.let(T.unsafe(nil), Hash)

class BinData::Struct::Snapshot < ::Hash
  def []=(key, value); end
  def method_missing(symbol, *args); end
  def respond_to?(symbol, include_private = T.unsafe(nil)); end
end

class BinData::StructArgProcessor < ::BinData::BaseArgProcessor
  def sanitize_parameters!(obj_class, params); end

  private

  def ensure_field_names_are_valid(obj_class, field_names); end
  def hidden_field_names(hidden); end
  def sanitize_endian(params); end
  def sanitize_fields(obj_class, params); end
  def sanitize_hide(params); end
  def sanitize_search_prefix(params); end
  def sanitized_field_names(sanitized_fields); end
end

class BinData::Tracer
  def initialize(io); end

  def trace(msg); end
  def trace_obj(obj_name, val); end
end

class BinData::Uint16be < ::BinData::BasePrimitive
  def assign(val); end
  def do_num_bytes; end

  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

class BinData::Uint32be < ::BinData::BasePrimitive
  def assign(val); end
  def do_num_bytes; end

  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

class BinData::Uint8 < ::BinData::BasePrimitive
  def assign(val); end
  def do_num_bytes; end

  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

class BinData::Uint8Array < ::BinData::BasePrimitive
  private

  def read_and_return_value(io); end
  def sensible_default; end
  def value_to_binary_string(val); end
end

class BinData::Uint8ArrayArgProcessor < ::BinData::BaseArgProcessor
  def sanitize_parameters!(obj_class, params); end
end

class BinData::UnRegisteredTypeError < ::StandardError; end
BinData::VERSION = T.let(T.unsafe(nil), String)
class BinData::ValidityError < ::StandardError; end

class BinData::Virtual < ::BinData::BasePrimitive
  def do_num_bytes; end
  def do_read(io); end
  def do_write(io); end
  def sensible_default; end
end

module BinData::WarnNoReadLengthPlugin
  def read_and_return_value(io); end
end
