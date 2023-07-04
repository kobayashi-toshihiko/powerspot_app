class ChangeColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :profile, true
  end
end
