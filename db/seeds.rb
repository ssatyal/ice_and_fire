House.destroy_all
Character.destroy_all

admin = User.create!(username:"Admin",password:"password",email:"google.com")

stark = admin.houses.create!(name:"Stark", region:"The North", seat:"Winterfell", seat_url:"http://i.imgur.com/T2lK7vo.jpg", sigil_url:"http://i.imgur.com/JUoTVDa.png",
motto:"Winter is Coming", great_house:true, allegiance:"Iron Throne")

ned = stark.characters.create!(name:"Ned Stark", gender:"Male", photo_url:"http://i.imgur.com/MzotDZQ.jpg", primary_weapon:"Sword: \"Ice\"",quote:"Bran: Can a man still be brave if he’s afraid?
Eddard: That is the only time a man can be brave.",status:"deceased: executed in King's Landing")

jon = stark.characters.create!(name:"Jon Snow", gender:"Male", photo_url:"http://i.imgur.com/2akMIYA.jpg", primary_weapon:"Sword: \"Longclaw\"",quote:"There’s no shame in fear, my father told me, what matters is how we face it.",status:"presumed deceased: stabbed at The Wall by the Night's Watch")

robb = stark.characters.create!(name:"Robb Stark", gender:"Male", photo_url:"http://i.imgur.com/qo6CmyW.jpg", primary_weapon:"Sword",quote:"I have won every battle, yet somehow I'm losing the war.",status:"deceased: Red Wedding'd")

cat = stark.characters.create!(name:"Catelyn Stark", gender:"Female", photo_url:"http://i.imgur.com/nmxm0nd.jpg", primary_weapon:"n/a",quote:"My son lies here broken and dying, Luwin, and you wish to discuss a new master of horse? Do you think I care what happens in the stables? Do you think it matters to me one whit? I would gladly butcher every horse in Winterfell with my own hands if it would open Bran's eyes, do you understand that? Do you?",status:"deceased: Red Wedding'd")

arya = stark.characters.create!(name:"Arya Stark", gender:"Female", photo_url:"http://i.imgur.com/lQW0ZjV.jpg", primary_weapon:"Sword: \"Needle\"",quote:"I'm the ghost in Harrenhal, she thought. And that night, there was one less name to hate.",status:"No One")

lannister = admin.houses.create!(name:"Lannister", region:"Westerlands", seat:"Casterly Rock", seat_url:"http://i.imgur.com/KeJxxzEm.jpg", sigil_url:"http://i.imgur.com/uxowZrn.png",
motto:"Hear Me Roar!", great_house:true, allegiance:"Iron Throne")

tyrion = lannister.characters.create!(name:"Tyrion Lannister", gender:"Male", photo_url:"http://i.imgur.com/quBLExVm.jpg", primary_weapon:"n/a",quote:"My mind is my weapon. My brother has his sword, King Robert has his warhammer and I have my mind... and a mind needs books as a sword needs a whetstone if it is to keep its edge. That’s why I read so much, Jon Snow.",status:"alive, missing from Westeros")

tywin = lannister.characters.create!(name:"Tywin Lannister", gender:"Male", photo_url:"http://i.imgur.com/0Cc3yWn.jpg", primary_weapon:"n/a",quote:"Some battles are won with swords and spears, others with quills and ravens.",status:"deceased: crossbow from Tyrion")
