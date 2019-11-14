 class CommandLineInterface 
  def intro
    new_screen(20)
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

      # #boom = Music.new('Star_Way.wav')
      # boom.play
      new_screen(28)     
      puts "Hit enter to continue"
      input = gets.chomp
      # boom.stop

                                                                              
                                                                                
  end

  def new_screen(spaces)
    spaces.times do
      puts ""
    end
  end

  def choices
    #new_screen(43)
    puts "Pick one from the following options"
    puts "------------------------------------"
    puts "1. Create a profile"
    puts "2. Find a genre of a game"
    puts "3. Write a review for a game"
    puts "4. Read reviews for a game"
    puts "5. Update a review"
    puts "6. Remove a review"
    puts "7. Find favorite genre of a player"
    puts "8. Lists all games in the database"
    puts "------------------------------------"
    puts "If you would like to exit the program type \'exit\' or \'quit\'"
    puts "------------------------------------"
      while true
        new_screen(5)
        input = gets.chomp
        if input == '1'
          create_player
          break
        elsif input == '2'
          find_genre_by_game
          break
        elsif input == '3'
          write_review
          break
        elsif input == '4'
          read_review
          break
        elsif input == '5'
          update_review
          break
        elsif input =='6'
          remove_review
          break
        elsif input == '7'
          find_favorite_genre_of_player
          break
        elsif input =='8'
          list_all_game_names
          break
        elsif input.downcase == 'exit' || input.downcase == 'quit'
          break
          puts "-------------------------------"
          puts 'Thank you for using GameFinder!'
          puts "-------------------------------"
        else
          puts "Command not found - Please pick from the list or type exit to quit"
        end
      end
  end

  def create_player

    while true
      new_screen(64)
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
      new_screen(20)
      puts "Your profile has been created"
      puts "Name - #{name_input}"
      puts "Age  - #{age_input}"
      puts "Favorite Genre - #{genre_input}"
      new_screen(20)

      choices
      break
    end
  end

  def find_genre_by_game
    while true
      new_screen(64)
      puts "Let's find a genre of a game!"
      puts "Please enter the name of the game"
      puts "----------------------------------"
      game_input = gets.chomp
      a = Game.find_by(name: game_input)
      if a == nil
        new_screen(23)
        puts "***No game found in database by that name***"
        new_screen(20)
        break
      else
        new_screen(21)
        puts "----------------------------------"
        puts "#{a.name} - #{a.genre}"
        puts "----------------------------------"
        new_screen(20)
      end

      break
    end
    choices
  end

  def find_game_by_name
    puts "Please enter name of game"
    name_of_game_input = gets.chomp
    @game = Game.find_by(name: name_of_game_input)
    # if @game == true
    #   break
    # else
    #   puts "Game not found by that name!"
    #   break
    #   options
    # end
  end


  def find_player
    puts "Please enter of player"
    player_name_input = gets.chomp
    @player = Player.find_by(name: player_name_input)
  end

  def find_favorite_genre_of_player
    while true
      find_player
      new_screen(64)
      puts "The favorite game genre of #{@player.name} is #{@player.favorite_genre}."
      new_screen(20)

      break
    end
    choices
  end

  def write_review
    while true
      new_screen(64)
      find_player
      find_game_by_name
      
      puts "Please enter the score you give the game from 0 to 10"
      score_input = gets.chomp

      # if score_input == "exit" || score_input == "quit"
      #   choices
      #   break
      # else
      
        puts "Please enter your review description"
        desc_input = gets.chomp

        Review.create(player_id: @player.id, game_id: @game.id, score: score_input, description: desc_input)

      new_screen(64)
      puts "Review created!"
      new_screen(20)
      choices
      break
    
    end
  end

  def read_review
    while true
      find_game_by_name

      review = Review.find_by(game_id: @game.id)
      # review = Review.find(game_id: @game.id)
      new_screen(64)
      puts "Score #{review.score} out of 10"
      puts "#{review.description}"
      new_screen(20)

      break
    end
    choices

  end

  def update_review
    while true
      new_screen(64)
      find_player
      find_game_by_name

      found_review = Review.find_by(player_id: @player.id, game_id: @game.id)

      puts "Please enter a new score"
      new_score_input = gets.chomp
      puts "Please enter a new review description"
      new_disc_input = gets.chomp

      found_review.score = new_score_input
      found_review.description = new_disc_input
      found_review.save
      new_screen(64)
      puts "Your score #{found_review.score} out of 10"
      puts ""
      puts "Your review description :"
      puts "#{found_review.description}"
      new_screen(20)

      choices
      break
    end

  end

  def list_all_game_names
    while true
      new_screen(25)
      puts "---------------------"
      all_games = Game.all
      all_games.each do |game|
        puts game.name
      end

      puts "---------------------"
      new_screen(10)

      choices
      break
    end
  end

  def remove_review
    while true
      new_screen(64)
      find_player
      find_game_by_name

      review_to_remove = Review.find_by(player_id: @player.id, game_id: @game.id)

      review_to_remove.destroy
      new_screen(64)
      puts "The review has been deleted"
      new_screen(20)


      break
    end
    choices
  end

   def closing
  #   new_screen(20)
  #   puts "Created by Drew Matheny"
  #   puts "Produced by Drew Matheny"
  #   new_screen(10)
  #   sleep 5
  #   puts "Writing by Drew Matheny"
  # end

    new_screen(64)

    puts "---------------------------------"
    puts "Thank you for using GameFinder!"
    puts "---------------------------------"
    
    puts "   ____                                __                __                 ____                       "
    puts "  /\\  _`\\                             /\\ \\__            /\\ \\               /\\  _`\\                     "
    puts "  \\ \\ \\/\\_\\   _ __     __      __     \\ \\ ,_\\     __    \\_\\ \\              \\ \\ \\L\\ \\   __  __     __   "
    puts "   \\ \\ \\/_/_ /\\`'__\\ /'__`\\  /'__`\\    \\ \\ \\/   /'__`\\  /'_` \\              \\ \\  _ <' /\\ \\/\\ \\   /\\_\\  "
    puts "    \\ \\ \\L\\ \\\\ \\ \\/ /\\  __/ /\\ \\L\\.\\_   \\ \\ \\_ /\\  __/ /\\ \\L\\ \\              \\ \\ \\L\\ \\\\ \\ \\_\\ \\  \\/_/_ "
    puts "     \\ \\____/ \\ \\_\\ \\ \\____\\\\ \\__/.\\_\\   \\ \\__\\\\ \\____\\\\ \\___,_\\              \\ \\____/ \\/`____ \\   /\\_\\"
    puts "      \\/___/   \\/_/  \\/____/ \\/__/\\/_/    \\/__/ \\/____/ \\/__,_ /               \\/___/   `/___/> \\  \\/_/"
    puts "                                                                                           /\\___/      "
    puts "                                                                                           \\/__/       "

    puts "   ____                                                                    __       __                                     "
    puts "  /\\  _`\\                                            /'\\_/`\\              /\\ \\__   /\\ \\                                  "  
    puts "  \\ \\ \\/\\ \\   _ __     __    __  __  __             /\\      \\      __     \\ \\ ,_\\  \\ \\ \\___       __     ___     __  __    "
    puts "   \\ \\ \\ \\ \\ /\\`'__\\ /'__`\\ /\\ \\/\\ \\/\\ \\            \\ \\ \\__\\ \\   /'__`\\    \\ \\ \\/   \\ \\  _ `\\   /'__`\\ /' _ `\\  /\\ \\/\\ \\   "
    puts "    \\ \\ \\_\\ \\\\ \\ \\/ /\\  __/ \\ \\ \\_/ \\_/ \\            \\ \\ \\_/\\ \\ /\\ \\L\\.\\_   \\ \\ \\_   \\ \\ \\ \\ \\ /\\  __/ /\\ \\/\\ \\ \\ \\ \\_\\ \\  "
    puts "     \\ \\____/ \\ \\_\\ \\ \\____\\ \\ \\___x___/'             \\ \\_\\\\ \\_\\\\ \\__/.\\_\\   \\ \\__\\   \\ \\_\\ \\_\\\\ \\____\\\\ \\_\\ \\_\\ \\/`____ \\ "
    puts "      \\/___/   \\/_/  \\/____/  \\/__//__/                \\/_/ \\/_/ \\/__/\\/_/    \\/__/    \\/_/\\/_/ \\/____/ \\/_/\\/_/  `/___/> \\"
    puts "                                                                                                                     /\\___/"
    puts "                                                                                                                     \\/__/ "

    # sleep 0.5
    # new_screen(1)
    
    scrolling(64)
  #     puts "-------------------------------"
  #     puts 'Thank you for using GameFinder!'
  #     puts "-------------------------------"

   end

   def scrolling(num)
    num.times do
      sleep 0.3
      new_screen(1)
    end
  end


end

