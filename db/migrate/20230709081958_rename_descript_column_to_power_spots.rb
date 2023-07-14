class RenameDescriptColumnToPowerSpots < ActiveRecord::Migration[6.1]
  def change
    rename_column :power_spots, :descript, :main_descript
  end
end
