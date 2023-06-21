class PowerSpot < ApplicationRecord
  belongs_to :user
  belongs_to :attribute
  belongs_to :category_blessing
  belongs_to :prefecture
  has_many :comments
  validates :name, :address, :descript, :kami, :image1, presence: true
end
