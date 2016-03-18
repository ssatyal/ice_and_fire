class CreatedHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name
      t.string :region
      t.string :seat
      t.string :seat_url
      t.string :sigil_url
      t.string :motto
      t.boolean :great_house
      t.string :allegiance
    end
  end
end
