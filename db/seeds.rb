# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create([
  { name: "Hat", location_id: 1, description: "Money makes the world go round.  We need to prepare by buying all resources we can!", user_id: nil, organizer_id: 1, eventdate: DateTime.strptime("08/01/2018 17:00", "%m/%d/%Y %H:%M")},
  { name: "Spy Night", location_id: 2, description: "It's time to battle!!! ...With words. Lets have fun.", user_id: nil, organizer_id: 2, eventdate: DateTime.strptime("11/09/2018 17:00", "%m/%d/%Y %H:%M") },
  { name: "Battleship", location_id: 3, description: "Lets try something old school. Try to sink my Battleship!" , user_id: nil, organizer_id: 1, eventdate: DateTime.strptime("11/01/2018 17:00", "%m/%d/%Y %H:%M") },
  { name: "I spy", location_id: 2, description: "It's time for another mission Red spies. Lets get those Blues!!!", user_id: nil, organizer_id: 3, eventdate: DateTime.strptime("09/01/2018 17:00", "%m/%d/%Y %H:%M") },
  { name: "Pictionary", location_id: 2, description: "Let's do something with a little flare with pictures", user_id: nil, organizer_id: 2, eventdate: DateTime.strptime("11/16/2018 17:00", "%m/%d/%Y %H:%M") }
  ]);

Boardgame.create([
  { title: "Monopoly", description: "Buy, sell, dream and scheme your way to riches", rating: "4.5" },
  { title: "The Game of Life", description: "Players can choose from 31 Career cards featuring unusual or quirky careers such as ice cream flavor maker or a secret agent", rating: "4" },
  { title: "Battleship", description: "The game has convenient ship, plane, and peg storage on the side of the ocean grid", rating: "4.3" },
  { title: "Pictionary Board Game", description: "You don’t have to be an artist; in fact, if you “can’t draw,” the game can be even funnier", rating: "4" },
  { title: "Codenames", description: "Two rival spymasters know the secret identities of 25 agents. ", rating: "5" },
  { title: "Othello Classic Game ", description: "Play is simple and strategy is everything", rating: "4.3" },
  { title: "Camp Grizzly", description: "Camp Grizzly Horror Board Game", rating: "5" }
  ]);

User.create([
  {  user_name: "Davismeme", first_name: "davis", last_name: "ma", email: "davishma@gmail.com", encrypted_password: "light1", password: "light1", profile_photo:nil },
  { user_name: "Metmee", first_name: "David", last_name: "meme", email: "dmate@gmail.com", encrypted_password: "Mememe", password: "Mememe", profile_photo:nil },
  { user_name: "Buckle", first_name: "John", last_name: "Art", email: "John@gmail.com",  encrypted_password: "Buckle", password: "Buckle", profile_photo:nil }
  ]);

Location.create([
  { name: "Lucky Goblin", address: "1456 Hancock Street Quincy, MA 02169"},
  { name: "Launch Academy", address: "77 Summer St 7th Floor Boston, MA 02111" },
  { name: "The Corner Mall", address: "417 Washington Street, at Downtown Crossing" }
  ]);
