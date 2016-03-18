class CreatedCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :gender
      t.string :photo_url
      t.string :primary_weapon
      t.string :quote
      t.string :status
      t.belongs_to :house
    end
  end
end
