class RenameAttributeIdColmnToPowerSpots < ActiveRecord::Migration[6.1]
  def change
    rename_column :power_spots, :attribute_id, :element_id
  end
end
