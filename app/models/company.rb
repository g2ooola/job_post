class Company < ApplicationRecord
  belongs_to :admin
  has_many :jobs

  # TO DO : fix choice
  def self.choice
    where(active: true).limit(5)
  end
end
