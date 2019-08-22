class Job < ApplicationRecord
  belongs_to :company, counter_cache: true

  # TO DO : fix choice
  def self.choice
    where(active: true).limit(10)
  end
end
