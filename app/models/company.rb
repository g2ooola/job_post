class Company < ApplicationRecord
  include Sample

  belongs_to :admin
  has_many :jobs

  scope :actived, -> { where(active: true) }

  def actived_jobs
    jobs.actived
  end
end
