class Company < ApplicationRecord
  belongs_to :admin
  has_many :jobs
end
