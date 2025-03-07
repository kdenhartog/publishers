# typed: strict

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `encryptor` gem.
# Please instead update this file by running `bin/tapioca gem encryptor`.

module Encryptor
  extend ::Encryptor

  def decrypt(*args, &block); end
  def default_options; end
  def encrypt(*args, &block); end

  protected

  def crypt(cipher_method, *args); end
  def encryption?(cipher_method); end
  def extract_auth_tag(value); end
  def extract_cipher_text(value); end
end

module Encryptor::Version
  class << self
    def to_s; end
  end
end

Encryptor::Version::MAJOR = T.let(T.unsafe(nil), Integer)
Encryptor::Version::MINOR = T.let(T.unsafe(nil), Integer)
Encryptor::Version::PATCH = T.let(T.unsafe(nil), Integer)
