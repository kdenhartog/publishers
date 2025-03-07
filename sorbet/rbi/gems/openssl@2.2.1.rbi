# typed: false

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `openssl` gem.
# Please instead update this file by running `bin/tapioca gem openssl`.

class Integer < ::Numeric
  include ::ActiveSupport::NumericWithFormat
  include ::JSON::Ext::Generator::GeneratorMethods::Integer
  include ::RQRCode::CoreExtensions::Integer::Bitwise

  def to_bn; end
end

Integer::GMP_VERSION = T.let(T.unsafe(nil), String)

module OpenSSL
  private

  def Digest(name); end

  class << self
    def Digest(name); end
    def secure_compare(a, b); end
  end
end

class OpenSSL::BN
  include ::Comparable

  def pretty_print(q); end
end

module OpenSSL::Buffering
  include ::Enumerable

  def initialize(*_arg0); end

  def <<(s); end
  def close; end
  def each(eol = T.unsafe(nil)); end
  def each_byte; end
  def each_line(eol = T.unsafe(nil)); end
  def eof; end
  def eof?; end
  def flush; end
  def getc; end
  def gets(eol = T.unsafe(nil), limit = T.unsafe(nil)); end
  def print(*args); end
  def printf(s, *args); end
  def puts(*args); end
  def read(size = T.unsafe(nil), buf = T.unsafe(nil)); end
  def read_nonblock(maxlen, buf = T.unsafe(nil), exception: T.unsafe(nil)); end
  def readchar; end
  def readline(eol = T.unsafe(nil)); end
  def readlines(eol = T.unsafe(nil)); end
  def readpartial(maxlen, buf = T.unsafe(nil)); end
  def sync; end
  def sync=(_arg0); end
  def ungetc(c); end
  def write(*s); end
  def write_nonblock(s, exception: T.unsafe(nil)); end

  private

  def consume_rbuff(size = T.unsafe(nil)); end
  def do_write(s); end
  def fill_rbuff; end
end

class OpenSSL::Buffering::Buffer < ::String
  def initialize; end

  def <<(string); end
  def concat(string); end
end

OpenSSL::Buffering::Buffer::BINARY = T.let(T.unsafe(nil), Encoding)

class OpenSSL::Cipher
  def random_iv; end
  def random_key; end
end

class OpenSSL::Cipher::AES < ::OpenSSL::Cipher
  def initialize(*args); end
end

class OpenSSL::Cipher::AES128 < ::OpenSSL::Cipher
  def initialize(mode = T.unsafe(nil)); end
end

class OpenSSL::Cipher::AES192 < ::OpenSSL::Cipher
  def initialize(mode = T.unsafe(nil)); end
end

class OpenSSL::Cipher::AES256 < ::OpenSSL::Cipher
  def initialize(mode = T.unsafe(nil)); end
end

class OpenSSL::Cipher::BF < ::OpenSSL::Cipher
  def initialize(*args); end
end

class OpenSSL::Cipher::CAST5 < ::OpenSSL::Cipher
  def initialize(*args); end
end

class OpenSSL::Cipher::Cipher < ::OpenSSL::Cipher; end

class OpenSSL::Cipher::DES < ::OpenSSL::Cipher
  def initialize(*args); end
end

class OpenSSL::Cipher::IDEA < ::OpenSSL::Cipher
  def initialize(*args); end
end

class OpenSSL::Cipher::RC2 < ::OpenSSL::Cipher
  def initialize(*args); end
end

class OpenSSL::Cipher::RC4 < ::OpenSSL::Cipher
  def initialize(*args); end
end

class OpenSSL::Cipher::RC5 < ::OpenSSL::Cipher
  def initialize(*args); end
end

class OpenSSL::Config
  include ::Enumerable

  def initialize(filename = T.unsafe(nil)); end

  def [](section); end
  def []=(section, pairs); end
  def add_value(section, key, value); end
  def each; end
  def get_value(section, key); end
  def inspect; end
  def section(name); end
  def sections; end
  def set_section(section, pairs); end
  def to_s; end
  def value(arg1, arg2 = T.unsafe(nil)); end

  protected

  def data; end

  private

  def check_modify; end
  def get_key_string(section, key); end
  def initialize_copy(other); end

  class << self
    def get_key_string(data, section, key); end
    def parse(string); end
    def parse_config(io); end

    private

    def clear_comments(line); end
    def extract_reference(value); end
    def get_definition(io_stack); end
    def get_line(io_stack); end
    def parse_config_lines(io); end
    def unescape_value(data, section, value); end
  end
end

class OpenSSL::Digest < ::Digest::Class
  class << self
    def digest(name, data); end
  end
end

class OpenSSL::Digest::Digest < ::OpenSSL::Digest; end

class OpenSSL::Digest::MD4 < ::OpenSSL::Digest
  def initialize(data = T.unsafe(nil)); end

  class << self
    def digest(data); end
    def hexdigest(data); end
  end
end

class OpenSSL::Digest::MD5 < ::OpenSSL::Digest
  def initialize(data = T.unsafe(nil)); end

  class << self
    def digest(data); end
    def hexdigest(data); end
  end
end

class OpenSSL::Digest::RIPEMD160 < ::OpenSSL::Digest
  def initialize(data = T.unsafe(nil)); end

  class << self
    def digest(data); end
    def hexdigest(data); end
  end
end

class OpenSSL::Digest::SHA1 < ::OpenSSL::Digest
  def initialize(data = T.unsafe(nil)); end

  class << self
    def digest(data); end
    def hexdigest(data); end
  end
end

class OpenSSL::Digest::SHA224 < ::OpenSSL::Digest
  def initialize(data = T.unsafe(nil)); end

  class << self
    def digest(data); end
    def hexdigest(data); end
  end
end

class OpenSSL::Digest::SHA256 < ::OpenSSL::Digest
  def initialize(data = T.unsafe(nil)); end

  class << self
    def digest(data); end
    def hexdigest(data); end
  end
end

class OpenSSL::Digest::SHA384 < ::OpenSSL::Digest
  def initialize(data = T.unsafe(nil)); end

  class << self
    def digest(data); end
    def hexdigest(data); end
  end
end

class OpenSSL::Digest::SHA512 < ::OpenSSL::Digest
  def initialize(data = T.unsafe(nil)); end

  class << self
    def digest(data); end
    def hexdigest(data); end
  end
end

class OpenSSL::HMAC
  def ==(other); end
end

module OpenSSL::KDF
  private

  def hkdf(*_arg0); end
  def pbkdf2_hmac(*_arg0); end
  def scrypt(*_arg0); end

  class << self
    def hkdf(*_arg0); end
    def pbkdf2_hmac(*_arg0); end
    def scrypt(*_arg0); end
  end
end

class OpenSSL::KDF::KDFError < ::OpenSSL::OpenSSLError; end

module OpenSSL::Marshal
  mixes_in_class_methods ::OpenSSL::Marshal::ClassMethods

  def _dump(_level); end

  class << self
    def included(base); end
  end
end

module OpenSSL::Marshal::ClassMethods
  def _load(string); end
end

module OpenSSL::PKCS5
  private

  def pbkdf2_hmac(pass, salt, iter, keylen, digest); end
  def pbkdf2_hmac_sha1(pass, salt, iter, keylen); end

  class << self
    def pbkdf2_hmac(pass, salt, iter, keylen, digest); end
    def pbkdf2_hmac_sha1(pass, salt, iter, keylen); end
  end
end

class OpenSSL::PKey::EC < ::OpenSSL::PKey::PKey
  include ::OpenSSL::Marshal
  extend ::OpenSSL::Marshal::ClassMethods
end

OpenSSL::PKey::EC::EXPLICIT_CURVE = T.let(T.unsafe(nil), Integer)

class OpenSSL::PKey::EC::Point
  def to_bn(conversion_form = T.unsafe(nil)); end
end

module OpenSSL::SSL
  private

  def verify_certificate_identity(cert, hostname); end
  def verify_hostname(hostname, san); end
  def verify_wildcard(domain_component, san_component); end

  class << self
    def verify_certificate_identity(cert, hostname); end
    def verify_hostname(hostname, san); end
    def verify_wildcard(domain_component, san_component); end
  end
end

OpenSSL::SSL::OP_ALLOW_NO_DHE_KEX = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::OP_CRYPTOPRO_TLSEXT_BUG = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::OP_LEGACY_SERVER_CONNECT = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::OP_NO_ENCRYPT_THEN_MAC = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::OP_NO_RENEGOTIATION = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::OP_NO_TLSv1_3 = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::OP_SAFARI_ECDHE_ECDSA_BUG = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::OP_TLSEXT_PADDING = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::SSL2_VERSION = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::SSL3_VERSION = T.let(T.unsafe(nil), Integer)

class OpenSSL::SSL::SSLContext
  def initialize(version = T.unsafe(nil)); end

  def max_version=(version); end
  def min_version=(version); end
  def servername_cb; end
  def servername_cb=(_arg0); end
  def set_params(params = T.unsafe(nil)); end
  def ssl_version=(meth); end
  def tmp_dh_callback; end
  def tmp_dh_callback=(_arg0); end
end

OpenSSL::SSL::SSLContext::DEFAULT_2048 = T.let(T.unsafe(nil), OpenSSL::PKey::DH)
OpenSSL::SSL::SSLContext::DEFAULT_TMP_DH_CALLBACK = T.let(T.unsafe(nil), Proc)
OpenSSL::SSL::SSLContext::METHODS = T.let(T.unsafe(nil), Array)
OpenSSL::SSL::SSLContext::METHODS_MAP = T.let(T.unsafe(nil), Hash)

class OpenSSL::SSL::SSLErrorWaitReadable < ::OpenSSL::SSL::SSLError
  include ::IO::WaitReadable
end

class OpenSSL::SSL::SSLErrorWaitWritable < ::OpenSSL::SSL::SSLError
  include ::IO::WaitWritable
end

class OpenSSL::SSL::SSLServer
  include ::OpenSSL::SSL::SocketForwarder

  def initialize(svr, ctx); end

  def accept; end
  def close; end
  def listen(backlog = T.unsafe(nil)); end
  def shutdown(how = T.unsafe(nil)); end
  def start_immediately; end
  def start_immediately=(_arg0); end
  def to_io; end
end

class OpenSSL::SSL::SSLSocket
  include ::Enumerable
  include ::OpenSSL::Buffering
  include ::OpenSSL::SSL::SocketForwarder

  def context; end
  def hostname; end
  def io; end
  def post_connection_check(hostname); end
  def session; end
  def sync_close; end
  def sync_close=(_arg0); end
  def sysclose; end
  def to_io; end

  private

  def client_cert_cb; end
  def session_get_cb; end
  def session_new_cb; end
  def tmp_dh_callback; end
  def tmp_ecdh_callback; end
  def using_anon_cipher?; end

  class << self
    def open(remote_host, remote_port, local_host = T.unsafe(nil), local_port = T.unsafe(nil), context: T.unsafe(nil)); end
  end
end

module OpenSSL::SSL::SocketForwarder
  def addr; end
  def closed?; end
  def do_not_reverse_lookup=(flag); end
  def fcntl(*args); end
  def fileno; end
  def getsockopt(level, optname); end
  def peeraddr; end
  def setsockopt(level, optname, optval); end
end

OpenSSL::SSL::TLS1_1_VERSION = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::TLS1_2_VERSION = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::TLS1_3_VERSION = T.let(T.unsafe(nil), Integer)
OpenSSL::SSL::TLS1_VERSION = T.let(T.unsafe(nil), Integer)
module OpenSSL::Timestamp; end

class OpenSSL::Timestamp::Factory
  def additional_certs; end
  def additional_certs=(_arg0); end
  def allowed_digests; end
  def allowed_digests=(_arg0); end
  def create_timestamp(_arg0, _arg1, _arg2); end
  def default_policy_id; end
  def default_policy_id=(_arg0); end
  def gen_time; end
  def gen_time=(_arg0); end
  def serial_number; end
  def serial_number=(_arg0); end
end

class OpenSSL::Timestamp::Request
  def initialize(*_arg0); end

  def algorithm; end
  def algorithm=(_arg0); end
  def cert_requested=(_arg0); end
  def cert_requested?; end
  def message_imprint; end
  def message_imprint=(_arg0); end
  def nonce; end
  def nonce=(_arg0); end
  def policy_id; end
  def policy_id=(_arg0); end
  def to_der; end
  def version; end
  def version=(_arg0); end
end

class OpenSSL::Timestamp::Response
  def initialize(_arg0); end

  def failure_info; end
  def status; end
  def status_text; end
  def to_der; end
  def token; end
  def token_info; end
  def tsa_certificate; end
  def verify(*_arg0); end
end

OpenSSL::Timestamp::Response::GRANTED = T.let(T.unsafe(nil), Integer)
OpenSSL::Timestamp::Response::GRANTED_WITH_MODS = T.let(T.unsafe(nil), Integer)
OpenSSL::Timestamp::Response::REJECTION = T.let(T.unsafe(nil), Integer)
OpenSSL::Timestamp::Response::REVOCATION_NOTIFICATION = T.let(T.unsafe(nil), Integer)
OpenSSL::Timestamp::Response::REVOCATION_WARNING = T.let(T.unsafe(nil), Integer)
OpenSSL::Timestamp::Response::WAITING = T.let(T.unsafe(nil), Integer)
class OpenSSL::Timestamp::TimestampError < ::OpenSSL::OpenSSLError; end

class OpenSSL::Timestamp::TokenInfo
  def initialize(_arg0); end

  def algorithm; end
  def gen_time; end
  def message_imprint; end
  def nonce; end
  def ordering; end
  def policy_id; end
  def serial_number; end
  def to_der; end
  def version; end
end

class OpenSSL::X509::Attribute
  include ::OpenSSL::Marshal
  extend ::OpenSSL::Marshal::ClassMethods

  def ==(other); end
end

class OpenSSL::X509::CRL
  include ::OpenSSL::Marshal
  include ::OpenSSL::X509::Extension::Helpers
  include ::OpenSSL::X509::Extension::AuthorityKeyIdentifier
  extend ::OpenSSL::Marshal::ClassMethods

  def ==(other); end
end

class OpenSSL::X509::Extension
  include ::OpenSSL::Marshal
  extend ::OpenSSL::Marshal::ClassMethods

  def ==(other); end
  def to_a; end
  def to_h; end
  def to_s; end
end

module OpenSSL::X509::Extension::AuthorityInfoAccess
  include ::OpenSSL::X509::Extension::Helpers

  def ca_issuer_uris; end
  def ocsp_uris; end

  private

  def parse_aia_asn1; end
end

module OpenSSL::X509::Extension::AuthorityKeyIdentifier
  include ::OpenSSL::X509::Extension::Helpers

  def authority_key_identifier; end
end

module OpenSSL::X509::Extension::CRLDistributionPoints
  include ::OpenSSL::X509::Extension::Helpers

  def crl_uris; end
end

module OpenSSL::X509::Extension::Helpers
  def find_extension(oid); end
end

module OpenSSL::X509::Extension::SubjectKeyIdentifier
  include ::OpenSSL::X509::Extension::Helpers

  def subject_key_identifier; end
end

class OpenSSL::X509::Name
  include ::Comparable
  include ::OpenSSL::Marshal
  extend ::OpenSSL::Marshal::ClassMethods

  def pretty_print(q); end

  class << self
    def parse(str, template = T.unsafe(nil)); end
    def parse_openssl(str, template = T.unsafe(nil)); end
    def parse_rfc2253(str, template = T.unsafe(nil)); end
  end
end

module OpenSSL::X509::Name::RFC2253DN
  private

  def expand_hexstring(str); end
  def expand_pair(str); end
  def expand_value(str1, str2, str3); end
  def scan(dn); end

  class << self
    def expand_hexstring(str); end
    def expand_pair(str); end
    def expand_value(str1, str2, str3); end
    def scan(dn); end
  end
end

class OpenSSL::X509::Request
  include ::OpenSSL::Marshal
  extend ::OpenSSL::Marshal::ClassMethods

  def ==(other); end
end

class OpenSSL::X509::Revoked
  def ==(other); end
end
