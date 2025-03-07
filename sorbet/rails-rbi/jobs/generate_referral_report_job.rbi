# typed: strong
# This is an autogenerated file for Rails' jobs.
# Please rerun bundle exec rake rails_rbi:jobs to regenerate.
class GenerateReferralReportJob
  sig do
    params(
      publisher_id: T.untyped,
      referral_codes: T.untyped,
      start_date: T.untyped,
      end_date: T.untyped,
      interval: T.untyped,
      break_down_by_country: T.untyped
    ).returns(GenerateReferralReportJob)
  end
  def self.perform_later(publisher_id:, referral_codes:, start_date:, end_date:, interval:, break_down_by_country:); end

  sig do
    params(
      publisher_id: T.untyped,
      referral_codes: T.untyped,
      start_date: T.untyped,
      end_date: T.untyped,
      interval: T.untyped,
      break_down_by_country: T.untyped
    ).returns(GenerateReferralReportJob)
  end
  def self.perform_now(publisher_id:, referral_codes:, start_date:, end_date:, interval:, break_down_by_country:); end

  sig do
    params(
      wait: T.nilable(ActiveSupport::Duration),
      wait_until: T.nilable(T.any(ActiveSupport::TimeWithZone, Date, Time)),
      queue: T.nilable(T.any(String, Symbol)),
      priority: T.nilable(Integer)
    ).returns(T.self_type)
  end
  def self.set(wait: nil, wait_until: nil, queue: nil, priority: nil); end
end
