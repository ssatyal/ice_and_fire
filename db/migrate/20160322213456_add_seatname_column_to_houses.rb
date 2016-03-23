class AddSeatnameColumnToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :seatname, :string
  end
end
