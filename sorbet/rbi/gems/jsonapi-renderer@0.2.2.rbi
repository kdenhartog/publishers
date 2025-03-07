# typed: strict

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `jsonapi-renderer` gem.
# Please instead update this file by running `bin/tapioca gem jsonapi-renderer`.

module JSONAPI; end

class JSONAPI::IncludeDirective
  def initialize(include_args, options = T.unsafe(nil)); end

  def [](key); end
  def key?(key); end
  def keys; end
  def to_hash; end
  def to_string; end

  private

  def valid?(key); end
  def valid_json_key_name_regex; end
end

class JSONAPI::IncludeDirective::InvalidKey < ::StandardError; end

module JSONAPI::IncludeDirective::Parser
  private

  def deep_merge!(src, ext); end
  def parse_array(include_array); end
  def parse_hash(include_hash); end
  def parse_include_args(include_args); end
  def parse_path_string(include_path); end
  def parse_string(include_string); end

  class << self
    def deep_merge!(src, ext); end
    def parse_array(include_array); end
    def parse_hash(include_hash); end
    def parse_include_args(include_args); end
    def parse_path_string(include_path); end
    def parse_string(include_string); end
  end
end
