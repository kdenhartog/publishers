# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `http-accept` gem.
# Please instead update this file by running `bin/tapioca gem http-accept`.

module HTTP; end
module HTTP::Accept; end

class HTTP::Accept::ContentType < ::HTTP::Accept::MediaTypes::MediaRange
  def initialize(mime_type, parameters = T.unsafe(nil)); end
end

module HTTP::Accept::Encodings
  class << self
    def browser_preferred_content_codings(env); end
    def parse(text); end
  end
end

HTTP::Accept::Encodings::CODINGS = T.let(T.unsafe(nil), Regexp)
HTTP::Accept::Encodings::CONTENT_CODING = T.let(T.unsafe(nil), Regexp)

class HTTP::Accept::Encodings::ContentCoding < ::Struct
  def encoding; end
  def encoding=(_); end
  def q; end
  def q=(_); end
  def quality_factor; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
    def parse(scanner); end
  end
end

HTTP::Accept::Encodings::HTTP_ACCEPT_ENCODING = T.let(T.unsafe(nil), String)
HTTP::Accept::Encodings::IDENTITY_CONTENT_CODING = T.let(T.unsafe(nil), HTTP::Accept::Encodings::ContentCoding)
HTTP::Accept::Encodings::QVALUE = T.let(T.unsafe(nil), Regexp)
HTTP::Accept::Encodings::WILDCARD_CONTENT_CODING = T.let(T.unsafe(nil), HTTP::Accept::Encodings::ContentCoding)

module HTTP::Accept::Languages
  class << self
    def parse(text); end
  end
end

HTTP::Accept::Languages::LANGUAGE_RANGE = T.let(T.unsafe(nil), Regexp)
HTTP::Accept::Languages::LOCALE = T.let(T.unsafe(nil), Regexp)

class HTTP::Accept::Languages::LanguageRange < ::Struct
  def locale; end
  def locale=(_); end
  def q; end
  def q=(_); end
  def quality_factor; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
    def parse(scanner); end
  end
end

class HTTP::Accept::Languages::Locales
  def initialize(names); end

  def &(languages); end
  def +(others); end
  def each(&block); end
  def freeze; end
  def include?(locale_name); end
  def join(*args); end
  def names; end
  def patterns; end
  def to_a; end

  class << self
    def expand(locale, into); end
  end
end

HTTP::Accept::Languages::QVALUE = T.let(T.unsafe(nil), Regexp)

module HTTP::Accept::MediaTypes
  class << self
    def browser_preferred_media_types(env); end
    def parse(text, normalize_whitespace = T.unsafe(nil)); end
  end
end

HTTP::Accept::MediaTypes::HTTP_ACCEPT = T.let(T.unsafe(nil), String)
HTTP::Accept::MediaTypes::MIME_TYPE = T.let(T.unsafe(nil), Regexp)

class HTTP::Accept::MediaTypes::Map
  def initialize; end

  def <<(object); end
  def [](media_range); end
  def []=(media_range, object); end
  def for(media_types); end
  def freeze; end
end

HTTP::Accept::MediaTypes::Map::WILDCARD = T.let(T.unsafe(nil), String)

class HTTP::Accept::MediaTypes::MediaRange < ::Struct
  def ===(other); end
  def mime_type; end
  def mime_type=(_); end
  def parameters; end
  def parameters=(_); end
  def parameters_string; end
  def quality_factor; end
  def split(on = T.unsafe(nil), count = T.unsafe(nil)); end
  def to_s; end
  def to_str; end

  class << self
    def [](*_arg0); end
    def inspect; end
    def members; end
    def new(*_arg0); end
    def parse(scanner, normalize_whitespace = T.unsafe(nil)); end
    def parse_parameters(scanner, normalize_whitespace); end
  end
end

HTTP::Accept::MediaTypes::PARAMETER = T.let(T.unsafe(nil), Regexp)
HTTP::Accept::MediaTypes::WILDCARD_MEDIA_RANGE = T.let(T.unsafe(nil), HTTP::Accept::MediaTypes::MediaRange)
class HTTP::Accept::ParseError < ::ArgumentError; end
HTTP::Accept::QUOTED_STRING = T.let(T.unsafe(nil), Regexp)

module HTTP::Accept::QuotedString
  class << self
    def quote(value, force = T.unsafe(nil)); end
    def unquote(value, normalize_whitespace = T.unsafe(nil)); end
  end
end

module HTTP::Accept::Sort
  class << self
    def by_quality_factor(items); end
  end
end

HTTP::Accept::TOKEN = T.let(T.unsafe(nil), Regexp)
HTTP::Accept::VERSION = T.let(T.unsafe(nil), String)
