class AddUserNameAndJobAndProfileToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :birthday, :string
    add_column :users, :blood_type, :string
    add_column :users, :profile, :text
    add_column :users, :avatar, :text
    add_reference :users, :prefecture, foreign_key: true
    add_reference :users, :prefecture, foreign_key: true
  end
end
