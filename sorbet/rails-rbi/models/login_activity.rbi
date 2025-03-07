# This is an autogenerated file for dynamic methods in LoginActivity
# Please rerun bundle exec rake rails_rbi:models[LoginActivity] to regenerate.

# typed: strong
module LoginActivity::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module LoginActivity::GeneratedAttributeMethods
  sig { returns(T.nilable(String)) }
  def accept_language; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def accept_language=(value); end

  sig { returns(T::Boolean) }
  def accept_language?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(String) }
  def id; end

  sig { params(value: T.any(String, Symbol)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(T.nilable(String)) }
  def publisher_id; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def publisher_id=(value); end

  sig { returns(T::Boolean) }
  def publisher_id?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end

  sig { returns(T.nilable(String)) }
  def user_agent; end

  sig { params(value: T.nilable(T.any(String, Symbol))).void }
  def user_agent=(value); end

  sig { returns(T::Boolean) }
  def user_agent?; end
end

module LoginActivity::GeneratedAssociationMethods
  sig { returns(T.nilable(::Publisher)) }
  def publisher; end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Publisher).void)).returns(::Publisher) }
  def build_publisher(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Publisher).void)).returns(::Publisher) }
  def create_publisher(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.params(object: ::Publisher).void)).returns(::Publisher) }
  def create_publisher!(*args, &block); end

  sig { params(value: T.nilable(::Publisher)).void }
  def publisher=(value); end

  sig { returns(T.nilable(::Publisher)) }
  def reload_publisher; end
end

module LoginActivity::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[LoginActivity]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[LoginActivity]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[LoginActivity]) }
  def find_n(*args); end

  sig { params(id: T.nilable(Integer)).returns(T.nilable(LoginActivity)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(LoginActivity) }
  def find_by_id!(id); end
end

class LoginActivity < ApplicationRecord
  include LoginActivity::GeneratedAttributeMethods
  include LoginActivity::GeneratedAssociationMethods
  extend LoginActivity::CustomFinderMethods
  extend LoginActivity::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(LoginActivity::ActiveRecord_Relation, LoginActivity::ActiveRecord_Associations_CollectionProxy, LoginActivity::ActiveRecord_AssociationRelation) }
end

module LoginActivity::QueryMethodsReturningRelation
  sig { returns(LoginActivity::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(LoginActivity::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: LoginActivity).returns(T::Boolean)).returns(T::Array[LoginActivity]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(LoginActivity::ActiveRecord_Relation) }
  def select_columns(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(LoginActivity::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: LoginActivity::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module LoginActivity::QueryMethodsReturningAssociationRelation
  sig { returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(LoginActivity::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: LoginActivity).returns(T::Boolean)).returns(T::Array[LoginActivity]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def select_columns(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(LoginActivity::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: LoginActivity::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

class LoginActivity::ActiveRecord_Relation < ActiveRecord::Relation
  include LoginActivity::ActiveRelation_WhereNot
  include LoginActivity::CustomFinderMethods
  include LoginActivity::QueryMethodsReturningRelation
  Elem = type_member(fixed: LoginActivity)
end

class LoginActivity::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include LoginActivity::ActiveRelation_WhereNot
  include LoginActivity::CustomFinderMethods
  include LoginActivity::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: LoginActivity)
end

class LoginActivity::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include LoginActivity::CustomFinderMethods
  include LoginActivity::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: LoginActivity)

  sig { params(records: T.any(LoginActivity, T::Array[LoginActivity])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(LoginActivity, T::Array[LoginActivity])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(LoginActivity, T::Array[LoginActivity])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(LoginActivity, T::Array[LoginActivity])).returns(T.self_type) }
  def concat(*records); end
end
