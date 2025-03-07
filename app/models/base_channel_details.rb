# typed: true
class BaseChannelDetails < ApplicationRecord
  self.abstract_class = true

  has_one :channel, as: :details

  def channel_identifier
    raise "Override channel_identifier"
  end
end
