# typed: strict

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `meta-tags` gem.
# Please instead update this file by running `bin/tapioca gem meta-tags`.

module MetaTags
  class << self
    def config; end
    def configure; end
  end
end

class MetaTags::Configuration
  def initialize; end

  def default_property_tags; end
  def description_limit; end
  def description_limit=(_arg0); end
  def keywords_limit; end
  def keywords_limit=(_arg0); end
  def keywords_lowercase; end
  def keywords_lowercase=(_arg0); end
  def keywords_separator; end
  def keywords_separator=(_arg0); end
  def minify_output; end
  def minify_output=(_arg0); end
  def open_meta_tags; end
  def open_meta_tags=(_arg0); end
  def open_meta_tags?; end
  def property_tags; end
  def reset_defaults!; end
  def title_limit; end
  def title_limit=(_arg0); end
  def truncate_site_title_first; end
  def truncate_site_title_first=(_arg0); end
end

class MetaTags::ContentTag < ::MetaTags::Tag
  def render(view); end
end

module MetaTags::ControllerHelper
  def render(*args, &block); end

  protected

  def meta_tags; end
  def set_meta_tags(meta_tags); end
end

class MetaTags::MetaTagsCollection
  def initialize; end

  def [](name); end
  def []=(name, value); end
  def delete(*names); end
  def extract(name); end
  def extract_full_title; end
  def extract_robots; end
  def extract_separator; end
  def extract_title; end
  def full_title(defaults = T.unsafe(nil)); end
  def meta_tags; end
  def page_title(defaults = T.unsafe(nil)); end
  def update(object = T.unsafe(nil)); end
  def with_defaults(defaults = T.unsafe(nil)); end

  protected

  def apply_robots_value(result, name, value, processed); end
  def calculate_robots_attributes(result, attributes); end
  def extract_robots_attribute(name); end
  def extract_separator_section(name, default); end
  def normalize_open_graph(meta_tags); end
end

class MetaTags::Railtie < ::Rails::Railtie; end

class MetaTags::Renderer
  def initialize(meta_tags); end

  def meta_tags; end
  def normalized_meta_tags; end
  def render(view); end

  protected

  def configured_name_key(name); end
  def process_array(tags, property, content, **opts); end
  def process_hash(tags, property, content, **opts); end
  def process_tree(tags, property, content, **opts); end
  def render_alternate(tags); end
  def render_charset(tags); end
  def render_custom(tags); end
  def render_hash(tags, key, **opts); end
  def render_hashes(tags, **opts); end
  def render_icon(tags); end
  def render_links(tags); end
  def render_noindex(tags); end
  def render_open_search(tags); end
  def render_refresh(tags); end
  def render_tag(tags, name, value, name_key: T.unsafe(nil), value_key: T.unsafe(nil)); end
  def render_title(tags); end
  def render_with_normalization(tags, name); end
end

class MetaTags::Tag
  def initialize(name, attributes = T.unsafe(nil)); end

  def attributes; end
  def name; end
  def render(view); end

  protected

  def prepare_attributes(attributes); end
end

module MetaTags::TextNormalizer
  extend ::MetaTags::TextNormalizer

  def cleanup_string(string, strip: T.unsafe(nil)); end
  def cleanup_strings(strings, strip: T.unsafe(nil)); end
  def helpers; end
  def normalize_description(description); end
  def normalize_keywords(keywords); end
  def normalize_title(site_title, title, separator, reverse = T.unsafe(nil)); end
  def safe_join(array, sep = T.unsafe(nil)); end
  def strip_tags(string); end
  def truncate(string, limit = T.unsafe(nil), natural_separator = T.unsafe(nil)); end
  def truncate_array(string_array, limit = T.unsafe(nil), separator = T.unsafe(nil), natural_separator = T.unsafe(nil)); end

  private

  def calculate_limit_left(limit, length, result, separator); end
  def calculate_title_limits(site_title, title, separator); end
  def truncate_title(site_title, title, separator); end
end

MetaTags::VERSION = T.let(T.unsafe(nil), String)

module MetaTags::ViewHelper
  def description(description); end
  def display_meta_tags(defaults = T.unsafe(nil)); end
  def display_title(defaults = T.unsafe(nil)); end
  def keywords(keywords); end
  def meta_tags; end
  def nofollow(nofollow = T.unsafe(nil)); end
  def noindex(noindex = T.unsafe(nil)); end
  def refresh(refresh); end
  def set_meta_tags(meta_tags = T.unsafe(nil)); end
  def title(title = T.unsafe(nil), headline = T.unsafe(nil)); end
end
