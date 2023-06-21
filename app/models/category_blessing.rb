class CategoryBlessing < ApplicationRecord
  has_many :power_spots
  validates :name, presence: true
end
