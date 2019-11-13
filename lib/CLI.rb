 class CommandLineInterface 
  def intro
      # puts "______________________________________________________________________________"
      # puts " ______ _______ _______ _______ _______ _____ __   _ ______  _______  ______"
      # puts " |  ____ |_____| |  |  | |______ |______   |   | \\  | |     \\ |______ |_____/"
      # puts " |_____| |     | |  |  | |______ |       __|__ |  \\_| |_____/ |______ |    \\_"
      # puts "______________________________________________________________________________"
      # puts ""

      # puts "_______  _______  _______  _______  _______ _________ _        ______   _______  _______ "
      # puts "(  ____ \\(  ___  )(       )(  ____ \\(  ____ \\\\__   __/( (    /|(  __  \\ (  ____ \\(  ____ )"
      # puts "| (    \\/| (   ) || () () || (    \\/| (    \\/   ) (   |  \\  ( || (  \\  )| (    \\/| (    )|"
      # puts "| |      | (___) || || || || (__    | (__       | |   |   \\ | || |   ) || (__    | (____)|"
      # puts "| | ____ |  ___  || |(_)| ||  __)   |  __)      | |   | (\\ \\) || |   | ||  __)   |     __)"
      # puts "| | \\_  )| (   ) || |   | || (      | (         | |   | | \\   || |   ) || (      | (\\ (   "
      # puts "| (___) || )   ( || )   ( || (____/\\| )      ___) (___| )  \\  || (__/  )| (____/\\| ) \\ \\__"
      # puts "(_______)|/     \\||/     \\|(_______/|/       \\_______/|/    )_)(______/ (_______/|/   \\__/"

  puts "     ___           ___           ___           ___           ___                       ___           ___           ___           ___    " 
  puts "    /\\  \\         /\\  \\         /\\__\\         /\\  \\         /\\  \\          ___        /\\__\\         /\\  \\         /\\  \\         /\\  \\ " 
  puts "   /::\\  \\       /::\\  \\       /::|  |       /::\\  \\       /::\\  \\        /\\  \\      /::|  |       /::\\  \\       /::\\  \\       /::\\  \\ "  
  puts "  /:/\\:\\  \\     /:/\\:\\  \\     /:|:|  |      /:/\\:\\  \\     /:/\\:\\  \\       \\:\\  \\    /:|:|  |      /:/\\:\\  \\     /:/\\:\\  \\     /:/\\:\\  \\ " 
  puts " /:/  \\:\\  \\   /::\\~\\:\\  \\   /:/|:|__|__   /::\\~\\:\\  \\   /::\\~\\:\\  \\      /::\\__\\  /:/|:|  |__   /:/  \\:\\__\\   /::\\~\\:\\  \\   /::\\~\\:\\  \\ "
  puts "/:/__/_\\:\\__\\ /:/\\:\\ \\:\\__\\ /:/ |::::\\__\\ /:/\\:\\ \\:\\__\\ /:/\\:\\ \\:\\__\\  __/:/\\/__/ /:/ |:| /\\__\\ /:/__/ \\:|__| /:/\\:\\ \\:\\__\\ /:/\\:\\ \\:\\__\\ "
  puts "\\:\\  /\\ \\/__/ \\/__\\:\\/:/  / \\/__/~~/:/  / \\:\\~\\:\\ \\/__/ \\/__\\:\\ \\/__/ /\\/:/  /    \\/__|:|/:/  / \\:\\  \\ /:/  / \\:\\~\\:\\ \\/__/ \\/_|::\\/:/  /"
  puts " \\:\\ \\:\\__\\        \\::/  /        /:/  /   \\:\\ \\:\\__\\        \\:\\__\\   \\::/__/         |:/:/  /   \\:\\  /:/  /   \\:\\ \\:\\__\\      |:|::/  / "
  puts "  \\:\\/:/  /        /:/  /        /:/  /     \\:\\ \\/__/         \\/__/    \\:\\__\\         |::/  /     \\:\\/:/  /     \\:\\ \\/__/      |:|\\/__/  "
  puts "   \\::/  /        /:/  /        /:/  /       \\:\\__\\                     \\/__/         /:/  /       \\::/__/       \\:\\__\\        |:|  |    "
  puts "    \\/__/         \\/__/         \\/__/         \\/__/                                   \\/__/         ~~            \\/__/         \\|__|    "
                                                                                                

      puts "----------------------------------------------------------------------------"                                                                   
      puts "Welcome to GameFinder!  This application allows users to find a great game!"
      puts "----------------------------------------------------------------------------"
      puts "Hit enter to continue"
      input = gets.chomp
                                                                              
                                                                                
  end

  def choices
    puts "Pick one from the following options"
    puts "------------------------------------"
    puts "1. Create a profile"
    puts "2. Find a genre of a game"
    puts "3. Write a review for a game"
    puts "4. Read reviews for a game"
    puts "5. Update a review"
    puts "6. Remove a review"
    puts "7. Find favorite genre of a player"
    puts "------------------------------------"
  end

  def closing
      while true
          puts "If you would like to exit the program type \'exit\' or \'quit\'"
          input = gets.chomp.downcase
          #puts input 
          if input == 'exit' || input == 'quit'
            break 
          end
        end
      puts "-------------------------------"
      puts 'Thank you for using GameFinder!'
      puts "-------------------------------"
  end

  def create_player
    puts "Please enter your name"
    puts "------------------------------------------------"
    name_input = gets.chomp
    puts "Please enter your age"
    puts "------------------------------------------------"
    age_input = gets.chomp
    puts "Please enter your favorite genre"
    puts "------------------------------------------------"
    puts "Examples - RPG, Action, MOBA, Simulation, Sports"
    puts "------------------------------------------------"
    genre_input = gets.chomp
    p = Player.create(name: name_input, age: age_input, favorite_genre: genre_input)
    puts "Your profile has been created"
    puts "Name - #{name_input}"
    puts "Age  - #{age_input}"
    puts "Favorite Genre - #{genre_input}"
  end

  def find_genre_by_game
    puts "Let's find a genre of a game!"
    puts "Please enter the name of the game"
    puts "----------------------------------"
    game_input = gets.chomp
    a = Game.find_by!(name: game_input)
    puts "----------------------------------"
    puts "#{a.name} - #{a.genre}"
    puts "----------------------------------"
  end

  def find_game_by_name
    puts "Please enter name of game"
    name_of_game_input = gets.chomp
    @game = Game.find_by(name: name_of_game_input)
  end


  def find_player
    puts "Please enter name"
    player_name_input = gets.chomp
    @player = Player.find_by(name: player_name_input)
  end

  def find_favorite_genre_of_player
      find_player
      puts @player.favorite_genre
  end

  def write_review
    find_player
    find_game_by_name
    
    puts "Please enter the score you give the game from 0 to 10"
    score_input = gets.chomp

    puts "Please enter your review description"
    desc_input = gets.chomp

    Review.create(player_id: @player.id, game_id: @game.id, score: score_input, description: desc_input)
  end

  def read_reviews
    find_game_by_name

    review = Review.find_by(game_id: @game.id)
    puts "Score #{review.score} out of 10"
    puts "#{review.description}"
    
  end





end

