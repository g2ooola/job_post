class Job < ApplicationRecord
  belongs_to :company, counter_cache: true

  scope :actived, -> { where(active: true) }

  # TODO : fix choice
  def self.actived_choice
    actived.limit(10)
  end
end
