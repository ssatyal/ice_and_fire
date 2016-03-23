class RemoveSeatnameFromHouses < ActiveRecord::Migration
  def change
    remove_column :houses, :seatname
  end
end
