# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create([
  { name: "Hat", location_id: 1, description: "Money makes the world go round.  We need to prepare by buying all resources we can!", user_id: nil, boardgame_ids: [1, 2, 7],  organizer_id: 3, eventdate: DateTime.strptime("08/01/2018 17:00", "%m/%d/%Y %H:%M")},
  { name: "Spy Night", location_id: 2, description: "It's time to battle!!! ...With words. Lets have fun.", user_id: nil, organizer_id: 2, boardgame_ids: [5], eventdate: DateTime.strptime("11/09/2018 17:00", "%m/%d/%Y %H:%M") },
  { name: "Battleship", location_id: 3, description: "Lets try something old school. Try to sink my Battleship!" , user_id: nil, organizer_id: 1, boardgame_ids: [3, 6, 7], eventdate: DateTime.strptime("11/16/2018 17:00", "%m/%d/%Y %H:%M") },
  { name: "I spy", location_id: 2, description: "It's time for another mission Red spies. Lets get those Blues!!!", user_id: nil, organizer_id: 3, boardgame_ids: [5], eventdate: DateTime.strptime("11/17/2018 17:00", "%m/%d/%Y %H:%M") },
  { name: "Pictionary", location_id: 2, description: "Let's do something with a little flare with pictures", user_id: nil, organizer_id: 2, boardgame_ids: [4, 5, 7], eventdate: DateTime.strptime("11/21/2018 17:00", "%m/%d/%Y %H:%M") }
  ]);

Boardgame.create([
  { title: "Monopoly", description: "Wheel and deal as you build your fortune playing an exciting game of MONOPOLY online. Buy up whole neighborhoods, charge rent, and watch your empire grow. It's all about making deals and making money. But don\'t land in Jail! Go broke, and you'll lose everything.", rating: "4.5", remote_boardgame_photo_url: "https://www.publicdomainpictures.net/pictures/210000/velka/monopoly-game-board.jpg" },
  { title: "The Game of Life", description: "Players can choose from 31 Career cards featuring unusual or quirky careers such as ice cream flavor maker or a secret agent", rating: "4", remote_boardgame_photo_url: "https://upload.wikimedia.org/wikipedia/commons/d/d0/The_Game_of_Life_%E4%BA%BA%E7%94%9F%E3%82%B2%E3%83%BC%E3%83%A0_DSCF2280.jpg" },
  { title: "Battleship", description: "The game has convenient ship, plane, and peg storage on the side of the ocean grid", rating: "4.3", remote_boardgame_photo_url:"https://c1.staticflickr.com/5/4561/24795669388_21cb104c04_b.jpg" },
  { title: "Pictionary Board Game", description: "It\'s everyone\'s favorite drawing and guessing game! A family favorite, Pictionary tests a players skill and ability to quickly draw out images that make it the easiest for your team members to guess the word. It\'s always a fun time with this game around, a party favorite, you sure can count on big laughs as you discover the artist in your friends and family. The game play to Pictionary is time tested and follows the quick-draw classic where the guesses can be just as hilarious as the sketches as you use markers to draw your best rendition of the clue on the card.", rating: "4", boardgame_photo: "nil" },
  { title: "Codenames", description: "Two rival spymasters know the secret identities of 25 agents. ", rating: "5", remote_boardgame_photo_url: "https://c1.staticflickr.com/6/5665/23769997010_4229660728_b.jpg" },
  { title: "Othello Classic Game ", description: "Play is simple and strategy is everything", rating: "4.3", remote_boardgame_photo_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/%E3%83%9D%E3%83%BC%E3%82%BF%E3%83%96%E3%83%AB_%E3%82%AA%E3%82%BB%E3%83%AD_%2814936813589%29.jpg/1024px-%E3%83%9D%E3%83%BC%E3%82%BF%E3%83%96%E3%83%AB_%E3%82%AA%E3%82%BB%E3%83%AD_%2814936813589%29.jpg" },
  { title: "Mouse Trap", description: "The Mouse Trap game, a longtime family favorite, is always good for zany action and lots of laughs. Scurry around the board collecting cheese and stealing cheese from other players…but watch out for the trap! While kids are engaged in playing the Mouse Trap game, they can also practice valuable skills in construction, cause and effect, and decision-making. As they interact with the trap, a working, multi-part machine, kids can practice construction skills. They can also work on understanding cause and effect as they understand that each action causes a reaction. And players can practice decision making as they analyze the situation and determine the next best step. Most importantly, kids can have so much fun playing this wacky game!", rating: "3", remote_boardgame_photo_url: "https://c1.staticflickr.com/6/5548/14130200857_5f4e64b465_b.jpg" },
  { title: "Catan", description: "Description: Picture yourself in the era of discoveries: after a long voyage of great deprivation, your ships have finally reached the coast of an uncharted island. Its name shall be Catan! But you are not the only discoverer. Other fearless seafarers have also landed on the shores of Catan: the race to settle the island has begun!", rating: "5", remote_boardgame_photo_url: "https://c1.staticflickr.com/4/3229/3153880613_f9d41fe4b8_b.jpg" }
  ]);

User.create([
  {  name: "Davisma", email: "davis@gmail.com", encrypted_password: "light1", password: "light1", profile_photo:nil },
  { name: "Metmee meme", email: "dmate@gmail.com", encrypted_password: "Mememe", password: "Mememe", profile_photo:nil },
  { name: "John Art", email: "John@gmail.com",  encrypted_password: "Buckle", password: "Buckle", profile_photo:nil }
  ]);

Location.create([
  { name: "Lucky Goblin", address: "1456 Hancock Street Quincy, MA 02169"},
  { name: "Launch Academy", address: "77 Summer St 7th Floor Boston, MA 02111" },
  { name: "The Corner Mall", address: "417 Washington Street, at Downtown Crossing" }
  ]);
