# This is an autogenerated file for dynamic methods in PayoutReport
# Please rerun bundle exec rake rails_rbi:models[PayoutReport] to regenerate.

# typed: strong
module PayoutReport::ActiveRelation_WhereNot
  sig { params(opts: T.untyped, rest: T.untyped).returns(T.self_type) }
  def not(opts, *rest); end
end

module PayoutReport::GeneratedAttributeMethods
  sig { returns(ActiveSupport::TimeWithZone) }
  def created_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def created_at=(value); end

  sig { returns(T::Boolean) }
  def created_at?; end

  sig { returns(Integer) }
  def expected_num_payments; end

  sig { params(value: T.any(Numeric, ActiveSupport::Duration)).void }
  def expected_num_payments=(value); end

  sig { returns(T::Boolean) }
  def expected_num_payments?; end

  sig { returns(T.nilable(BigDecimal)) }
  def fee_rate; end

  sig { params(value: T.nilable(T.any(Numeric, ActiveSupport::Duration))).void }
  def fee_rate=(value); end

  sig { returns(T::Boolean) }
  def fee_rate?; end

  sig { returns(T.nilable(T::Boolean)) }
  def final; end

  sig { params(value: T.nilable(T::Boolean)).void }
  def final=(value); end

  sig { returns(T::Boolean) }
  def final?; end

  sig { returns(String) }
  def id; end

  sig { params(value: T.any(String, Symbol)).void }
  def id=(value); end

  sig { returns(T::Boolean) }
  def id?; end

  sig { returns(T.nilable(T::Boolean)) }
  def manual; end

  sig { params(value: T.nilable(T::Boolean)).void }
  def manual=(value); end

  sig { returns(T::Boolean) }
  def manual?; end

  sig { returns(ActiveSupport::TimeWithZone) }
  def updated_at; end

  sig { params(value: T.any(Date, Time, ActiveSupport::TimeWithZone)).void }
  def updated_at=(value); end

  sig { returns(T::Boolean) }
  def updated_at?; end
end

module PayoutReport::GeneratedAssociationMethods
  sig { returns(::PayoutMessage::ActiveRecord_Associations_CollectionProxy) }
  def payout_messages; end

  sig { returns(T::Array[String]) }
  def payout_message_ids; end

  sig { params(value: T::Enumerable[::PayoutMessage]).void }
  def payout_messages=(value); end

  sig { returns(::PotentialPayment::ActiveRecord_Associations_CollectionProxy) }
  def potential_payments; end

  sig { returns(T::Array[String]) }
  def potential_payment_ids; end

  sig { params(value: T::Enumerable[::PotentialPayment]).void }
  def potential_payments=(value); end

  sig { returns(::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy) }
  def versions; end

  sig { returns(T::Array[String]) }
  def version_ids; end

  sig { params(value: T::Enumerable[::PaperTrail::Version]).void }
  def versions=(value); end
end

module PayoutReport::CustomFinderMethods
  sig { params(limit: Integer).returns(T::Array[PayoutReport]) }
  def first_n(limit); end

  sig { params(limit: Integer).returns(T::Array[PayoutReport]) }
  def last_n(limit); end

  sig { params(args: T::Array[T.any(Integer, String)]).returns(T::Array[PayoutReport]) }
  def find_n(*args); end

  sig { params(id: T.nilable(Integer)).returns(T.nilable(PayoutReport)) }
  def find_by_id(id); end

  sig { params(id: Integer).returns(PayoutReport) }
  def find_by_id!(id); end
end

class PayoutReport < ApplicationRecord
  include PayoutReport::GeneratedAttributeMethods
  include PayoutReport::GeneratedAssociationMethods
  extend PayoutReport::CustomFinderMethods
  extend PayoutReport::QueryMethodsReturningRelation
  RelationType = T.type_alias { T.any(PayoutReport::ActiveRecord_Relation, PayoutReport::ActiveRecord_Associations_CollectionProxy, PayoutReport::ActiveRecord_AssociationRelation) }

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def self.final(*args); end
end

class PayoutReport::ActiveRecord_Relation < ActiveRecord::Relation
  include PayoutReport::ActiveRelation_WhereNot
  include PayoutReport::CustomFinderMethods
  include PayoutReport::QueryMethodsReturningRelation
  Elem = type_member(fixed: PayoutReport)

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def final(*args); end
end

class PayoutReport::ActiveRecord_AssociationRelation < ActiveRecord::AssociationRelation
  include PayoutReport::ActiveRelation_WhereNot
  include PayoutReport::CustomFinderMethods
  include PayoutReport::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: PayoutReport)

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def final(*args); end
end

class PayoutReport::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include PayoutReport::CustomFinderMethods
  include PayoutReport::QueryMethodsReturningAssociationRelation
  Elem = type_member(fixed: PayoutReport)

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def final(*args); end

  sig { params(records: T.any(PayoutReport, T::Array[PayoutReport])).returns(T.self_type) }
  def <<(*records); end

  sig { params(records: T.any(PayoutReport, T::Array[PayoutReport])).returns(T.self_type) }
  def append(*records); end

  sig { params(records: T.any(PayoutReport, T::Array[PayoutReport])).returns(T.self_type) }
  def push(*records); end

  sig { params(records: T.any(PayoutReport, T::Array[PayoutReport])).returns(T.self_type) }
  def concat(*records); end
end

module PayoutReport::QueryMethodsReturningRelation
  sig { returns(PayoutReport::ActiveRecord_Relation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(PayoutReport::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_Relation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: PayoutReport).returns(T::Boolean)).returns(T::Array[PayoutReport]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(PayoutReport::ActiveRecord_Relation) }
  def select_columns(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PayoutReport::ActiveRecord_Relation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: PayoutReport::ActiveRecord_Relation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end

module PayoutReport::QueryMethodsReturningAssociationRelation
  sig { returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def all; end

  sig { params(block: T.nilable(T.proc.void)).returns(PayoutReport::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def reselect(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def order(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def reorder(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def group(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def limit(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def offset(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def joins(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def left_joins(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def left_outer_joins(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def where(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def rewhere(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def preload(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def extract_associated(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def eager_load(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def includes(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def from(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def lock(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def readonly(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def or(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def having(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def create_with(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def distinct(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def references(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def none(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def unscope(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def optimizer_hints(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def merge(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def except(*args); end

  sig { params(args: T.untyped).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def only(*args); end

  sig { params(block: T.proc.params(e: PayoutReport).returns(T::Boolean)).returns(T::Array[PayoutReport]) }
  def select(&block); end

  sig { params(args: T.any(String, Symbol, T::Array[T.any(String, Symbol)])).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def select_columns(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(PayoutReport::ActiveRecord_AssociationRelation) }
  def extending(*args, &block); end

  sig do
    params(
      of: T.nilable(Integer),
      start: T.nilable(Integer),
      finish: T.nilable(Integer),
      load: T.nilable(T::Boolean),
      error_on_ignore: T.nilable(T::Boolean),
      block: T.nilable(T.proc.params(e: PayoutReport::ActiveRecord_AssociationRelation).void)
    ).returns(ActiveRecord::Batches::BatchEnumerator)
  end
  def in_batches(of: 1000, start: nil, finish: nil, load: false, error_on_ignore: nil, &block); end
end
