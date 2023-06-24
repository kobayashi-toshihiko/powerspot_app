class Element < ApplicationRecord
  has_many :users
  validates :name, :descript, :kami, :personal, :match_attr, :better_job, presence: true
end
