class ChangeDataAdressToPowerspots < ActiveRecord::Migration[6.1]
  def change
    change_column :power_spots, :address, :text
  end
end
