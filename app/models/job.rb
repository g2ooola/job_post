class Job < ApplicationRecord
  belongs_to :company, counter_cache: true

  scope :actived, -> { where(active: true) }

  include Sample
end
