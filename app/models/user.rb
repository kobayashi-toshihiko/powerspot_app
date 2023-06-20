class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :prefecture
  belongs_to :attribute
  has_many :power_spots
  has_many :comments
  validates :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :username, :birthday, :blood_type, :profile, :avatar, presence: true
end
