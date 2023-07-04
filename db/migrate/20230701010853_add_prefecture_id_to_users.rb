class AddPrefectureIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :prefecture, foreign_key: true
  end
end
