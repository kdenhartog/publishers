# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `openssl-signature_algorithm` gem.
# Please instead update this file by running `bin/tapioca gem openssl-signature_algorithm`.

module OpenSSL::SignatureAlgorithm; end

class OpenSSL::SignatureAlgorithm::Base
  def compatible_verify_key?(verify_key); end
  def sign(data); end
  def signing_key; end
  def verify(signature, verification_data); end
  def verify_key; end
  def verify_key=(key); end
end

class OpenSSL::SignatureAlgorithm::ECDSA < ::OpenSSL::SignatureAlgorithm::Base
  def initialize(curve: T.unsafe(nil), hash_function: T.unsafe(nil)); end

  def compatible_verify_key?(key); end
  def curve; end
  def generate_signing_key; end
  def hash_function; end

  private

  def formatted_signature(signature); end
  def pick_parameters(curve, hash_function); end
  def verify_key_length; end
end

OpenSSL::SignatureAlgorithm::ECDSA::ACCEPTED_PARAMETERS = T.let(T.unsafe(nil), Array)
OpenSSL::SignatureAlgorithm::ECDSA::BYTE_LENGTH = T.let(T.unsafe(nil), Integer)

class OpenSSL::SignatureAlgorithm::ECDSA::SigningKey < ::OpenSSL::PKey::EC
  def initialize(*args); end

  def verify_key; end
end

class OpenSSL::SignatureAlgorithm::ECDSA::VerifyKey < ::OpenSSL::PKey::EC::Point
  def ec_key; end
  def serialize; end
  def verify(*args); end

  class << self
    def deserialize(pem_string); end
  end
end

class OpenSSL::SignatureAlgorithm::Error < ::StandardError; end

class OpenSSL::SignatureAlgorithm::RSA < ::OpenSSL::SignatureAlgorithm::Base
  def initialize(hash_function: T.unsafe(nil)); end

  def generate_signing_key(size: T.unsafe(nil)); end
  def hash_function; end
end

OpenSSL::SignatureAlgorithm::RSA::ACCEPTED_HASH_FUNCTIONS = T.let(T.unsafe(nil), Array)
OpenSSL::SignatureAlgorithm::RSA::DEFAULT_KEY_SIZE = T.let(T.unsafe(nil), Integer)

class OpenSSL::SignatureAlgorithm::RSA::SigningKey < ::OpenSSL::PKey::RSA
  def verify_key; end
end

class OpenSSL::SignatureAlgorithm::RSA::VerifyKey < ::OpenSSL::PKey::RSA
  def serialize; end

  class << self
    def deserialize(*_arg0); end
  end
end

class OpenSSL::SignatureAlgorithm::RSAPKCS1 < ::OpenSSL::SignatureAlgorithm::RSA; end
OpenSSL::SignatureAlgorithm::RSAPKCS1::ACCEPTED_HASH_FUNCTIONS = T.let(T.unsafe(nil), Array)

class OpenSSL::SignatureAlgorithm::RSAPSS < ::OpenSSL::SignatureAlgorithm::RSA
  def mgf1_hash_function; end
  def sign(data); end
  def verify(signature, verification_data); end
end

class OpenSSL::SignatureAlgorithm::SignatureVerificationError < ::OpenSSL::SignatureAlgorithm::Error; end
class OpenSSL::SignatureAlgorithm::UnsupportedParameterError < ::OpenSSL::SignatureAlgorithm::Error; end
OpenSSL::SignatureAlgorithm::VERSION = T.let(T.unsafe(nil), String)
class OpenSSL::SignatureAlgorithm::VerifyKeyError < ::OpenSSL::SignatureAlgorithm::Error; end
