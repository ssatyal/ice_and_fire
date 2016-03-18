# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

House.destroy_all
Character.destroy_all

stark = House.create!(name:"Stark", region:"The North", seat:"Winterfell", seat_url:"http://i.imgur.com/T2lK7vo.jpg", sigil_url:"http://i.imgur.com/JUoTVDa.png",
motto:"Winter is Coming", great_house:true, allegiance:"Iron Throne")

ned = stark.characters.create!(name:"Ned Stark", gender:"Male", photo_url:"http://i.imgur.com/MzotDZQ.jpg", primary_weapon:"Sword: \"Ice\"",quote:"Bran: Can a man still be brave if he’s afraid?
Eddard: That is the only time a man can be brave.",status:"deceased: executed in King's Landing")

jon = stark.characters.create!(name:"Jon Snow", gender:"Male", photo_url:"http://i.imgur.com/2akMIYA.jpg", primary_weapon:"Sword: \"Longclaw\"",quote:"There’s no shame in fear, my father told me, what matters is how we face it.",status:"presumed deceased: stabbed at The Wall by the Night's Watch")

lannister = House.create!(name:"Lannister", region:"Westerlands", seat:"Casterly Rock", seat_url:"http://i.imgur.com/KeJxxzEm.jpg", sigil_url:"http://i.imgur.com/uxowZrn.png",
motto:"Hear Me Roar!", great_house:true, allegiance:"Iron Throne")

tyrion = lannister.characters.create!(name:"Tyrion Lannister", gender:"Male", photo_url:"http://i.imgur.com/quBLExVm.jpg", primary_weapon:"n/a",quote:"My mind is my weapon. My brother has his sword, King Robert has his warhammer and I have my mind... and a mind needs books as a sword needs a whetstone if it is to keep its edge. That’s why I read so much, Jon Snow.",status:"alive, missing from Westeros")
