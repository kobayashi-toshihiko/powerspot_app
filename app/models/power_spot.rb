class PowerSpot < ApplicationRecord
  belongs_to :user
  belongs_to :element
  belongs_to :category_blessing
  belongs_to :prefecture
  has_many :comments
  validates :name, :address, :main_title, :sub_title, :main_descript, :blessing_descript, :access_info, :image1, presence: true
  mount_uploader :image1, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
end
