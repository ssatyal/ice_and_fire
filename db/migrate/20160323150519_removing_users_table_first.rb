class RemovingUsersTableFirst < ActiveRecord::Migration
  def change
    drop_table :users
    remove_column :houses, :user_id, :integer
    remove_column :characters, :user_id, :integer
  end
end
