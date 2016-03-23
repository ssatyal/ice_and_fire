class AddUsersToHouses < ActiveRecord::Migration
  def change
    add_reference :houses, :user, index: true, foreign_key: true
  end
end
