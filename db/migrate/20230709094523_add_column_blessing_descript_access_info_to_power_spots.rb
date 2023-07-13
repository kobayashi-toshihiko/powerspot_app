class AddColumnBlessingDescriptAccessInfoToPowerSpots < ActiveRecord::Migration[6.1]
  def change
    add_column :power_spots, :blessing_descript, :text, null: false, after: :main_descript
    add_column :power_spots, :access_info, :text, null: false, after: :blessing_descript
  end
end
