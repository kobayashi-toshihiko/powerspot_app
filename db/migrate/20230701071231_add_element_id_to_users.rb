class AddElementIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :element, foreign_key: true
  end
end
