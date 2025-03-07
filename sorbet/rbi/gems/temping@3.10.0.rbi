# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `temping` gem.
# Please instead update this file by running `bin/tapioca gem temping`.

class Temping
  class << self
    def cleanup; end
    def create(model_name, options = T.unsafe(nil), &block); end
    def teardown; end
  end
end

class Temping::ModelFactory
  def initialize(model_name, options = T.unsafe(nil), &block); end

  def klass; end

  private

  def add_methods; end
  def build; end
  def connection; end
  def create_table(options = T.unsafe(nil)); end
  def default_parent_class; end
  def table_name; end
end

Temping::ModelFactory::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)
