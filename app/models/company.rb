class Company < ApplicationRecord
  belongs_to :admin
  has_many :jobs

  scope :actived, -> { where(active: true) }

  # TODO : fix choice
  def self.actived_choice
    actived.limit(5)
  end

  def actived_jobs
    jobs.actived
  end
end
