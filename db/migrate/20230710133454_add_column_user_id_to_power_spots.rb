class AddColumnUserIdToPowerSpots < ActiveRecord::Migration[6.1]
  def change
    add_reference :power_spots, :user, foreign_key: true, after: :prefecture_id
  end
end
