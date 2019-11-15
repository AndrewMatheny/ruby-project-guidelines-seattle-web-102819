drew = Player.create(name: "Drew", age: 27, favorite_genre: "RPG")
zach = Player.create(name: "Zach", age: 25, favorite_genre: "MOBA")
alex = Player.create(name: "Alex", age: 29, favorite_genre: "Action")
glenn = Player.create(name: "Glenn", age: 30, favorite_genre: "Simulation")
will = Player.create(name: "Will", age: 29, favorite_genre: "Sports")


mass_effect_3 = Game.create(name: "Mass Effect 3", genre: "RPG")
the_last_of_us = Game.create(name: "The Last of Us", genre: "RPG")
dota_2 = Game.create(name: "Dota 2", genre: "MOBA")
league = Game.create(name: "League of Legends", genre: "MOBA")
city_skylines = Game.create(name: "City Skylines", genre: "Simulation")
factorio = Game.create(name: "Factorio", genre: "Simulation")
satisfactory = Game.create(name: "Satisfactory", genre: "Simulation")
rocket_league = Game.create(name: "Rocket League", genre: "Sports")
madden = Game.create(name: "Madden NFL 20", genre: "Sports")
golf_with_friends = Game.create(name: "Golf With Friends", genre: "Sports")
modern_warfare_2 = Game.create(name: "Call of Duty Modern Warfare 2", genre: "Action")
metro_exodus = Game.create(name: "Metro Exodus", genre: "Action")


Review.create(player_id: drew.id, game_id: mass_effect_3.id, score: 9, description: "Fantastic Story")
Review.create(player_id: drew.id, game_id: the_last_of_us.id, score: 10, description: "Unbelievable")
Review.create(player_id: drew.id, game_id: dota_2.id, score: 5, description: "Not my kind of game")
Review.create(player_id: drew.id, game_id: city_skylines.id, score: 8, description: "Great city builder")
Review.create(player_id: drew.id, game_id: metro_exodus.id, score: 9, description: "Great atmosphere and graphics")

Review.create(player_id: zach.id, game_id: mass_effect_3.id, score: 0, description: "Did not play")
Review.create(player_id: zach.id, game_id: dota_2.id, score: 10, description: "Played for thousands of hours")
Review.create(player_id: zach.id, game_id: madden.id, score: 1, description: "No interest in sports")
Review.create(player_id: zach.id, game_id: golf_with_friends.id, score: 7, description: "Exception to sports")

Review.create(player_id: alex.id, game_id: modern_warfare_2.id, score: 10, description: "Can not stop playing")
Review.create(player_id: alex.id, game_id: factorio.id, score: 8, description: "Fantastically complicated")

Review.create(player_id: glenn.id, game_id: city_skylines.id, score: 10, description: "My favorite game")
Review.create(player_id: glenn.id, game_id: league.id, score: 3, description: "Not very good")

Review.create(player_id: will.id, game_id: rocket_league.id, score: 9, description: "Great with friends")
Review.create(player_id: will.id, game_id: golf_with_friends.id, score: 8, description: "Also good with friends")
