class AddColumnToPowerSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :power_spots, :main_title, :string, null: false, after: :address
    add_column :power_spots, :sub_title, :string, null: false, after: :main_title
  end
end
