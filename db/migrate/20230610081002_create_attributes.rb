class CreateAttributes < ActiveRecord::Migration[6.1]
  def change
    create_table :attributes do |t|
      t.string :name, null: false
      t.text :descript, null: false
      t.text :kami, null: false
      t.text :personal, null: false
      t.text :match_attr, null: false
      t.text :better_job, null: false

      t.timestamps
    end
  end
end
