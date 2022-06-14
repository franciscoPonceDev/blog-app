class AddUsersRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :user_id, :integer, null:false, index: true
    add_foreign_key :likes, :users, column: :user_id
  end
end