class ChangeAttributesToElements < ActiveRecord::Migration[6.1]
  def change
    rename_table :attributes, :elements
  end
end
