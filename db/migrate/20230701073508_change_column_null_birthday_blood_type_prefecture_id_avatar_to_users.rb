class ChangeColumnNullBirthdayBloodTypePrefectureIdAvatarToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :birthday, false
    change_column_null :users, :blood_type, false
    change_column_null :users, :prefecture_id, false
    change_column_null :users, :avatar, false
  end
end
