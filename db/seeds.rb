# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Boardgame.create([
  { title: "Monopoly", description: "Buy, sell, dream and scheme your way to riches", rating: "4.5" },
  { title: "The Game of Life", description: "Players can choose from 31 Career cards featuring unusual or quirky careers such as ice cream flavor maker or a secret agent", rating: "4" },
  { title: "Battleship", description: "The game has convenient ship, plane, and peg storage on the side of the ocean grid", rating: "4.3" },
  { title: "Pictionary Board Game", description: "You don’t have to be an artist; in fact, if you “can’t draw,” the game can be even funnier", rating: "4" },
  { title: "Codenames", description: "Two rival spymasters know the secret identities of 25 agents. ", rating: "5" },
  { title: "Othello Classic Game ", description: "Play is simple and strategy is everything", rating: "4.3" },
  { title: "Camp Grizzly", description: "Camp Grizzly Horror Board Game", rating: "5" }
  ])

Event.create([
  { name: "Top Hat", location: "Downtown, Boston", description: "Money makes the world go round.  We need to prepare by buying all resources we can!", user_id: nil, oranizer_id: 1, eventdate: 02 Nov 2018 },
  { name: "Spy Night", location: "Downtown", description: "It's time to battle!!! ...With words. Lets have fun.", user_id: nil, oranizer_id: 2, eventdate: 02 Nov 2018 },
  { name: "Battleship", location: "FoodCourt", description: "Lets try something old school. Try to sink my Battleship!" , user_id: nil, oranizer_id: 1, eventdate: 11 Nov 2018 },
  { name: "I spy", location: "Back Alley", description: "It's time for another mission Red spies. Lets get those Blues!!!", user_id: nil, oranizer_id: 3, eventdate: 22 Nov 2018 },
  { name: "Pictionary", location: "First Floor", description: "Let's do something with a little flare with pictures", user_id: nil, oranizer_id: 2, eventdate: 23 Nov 2018 }
  ])

User.create([
  { email: "davishma@gmail.com", encrypted_password: "light1", first_name: "Davis", last_name: "Ma", user_name: "Davismeme", profile_photo:nil },
  { email: "dmate@gmail.com", encrypted_password: "mememe", first_name: "David", last_name: "mao", user_name: "maoMao", profile_photo:nil },
  { email: "John@gmail.com", encrypted_password: "lockout", first_name: "john", last_name: "lockout", user_name: "Jonnyboy", profile_photo:nil }
  ])
