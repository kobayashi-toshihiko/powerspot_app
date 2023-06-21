class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :power_spot
  validates :body, presence: true
end
