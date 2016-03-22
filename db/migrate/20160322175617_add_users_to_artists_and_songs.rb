class AddUsersToArtistsAndSongs < ActiveRecord::Migration
  def change
    add_column :houses, :user_id, :integer
    add_column :characters, :user_id, :integer
  end
end
