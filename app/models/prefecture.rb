class Prefecture < ApplicationRecord
  has_many :power_spots
  has_many :users
  belongs_to :area
  validates :name, presence: true
end
