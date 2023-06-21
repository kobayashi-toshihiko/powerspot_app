class CreatePowerSpots < ActiveRecord::Migration[6.1]
  def change
    create_table :power_spots do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.text :descript, null: false
      t.string :image1, null: false
      t.string :image2
      t.string :image3
      t.references :attribute, foreign_key: true, null: false
      t.references :category_blessing, foreign_key: true, null: false
      t.references :prefecture, foreign_key: true, null: false

      t.timestamps
    end
  end
end
