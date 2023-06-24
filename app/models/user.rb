class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :prefecture
  belongs_to :element
  has_many :power_spots
  has_many :comments
  # 右記の項目に関してはdeviseがデフォルトでバリデーションを定義している為、不要 :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  validates :username, :birthday, :blood_type, :profile, :avatar, presence: true
end
