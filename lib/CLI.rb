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
    puts "9. Add game to database"
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
        elsif input =='9'
          add_game
          break
        elsif input.downcase == 'exit' || input.downcase == 'quit'
          break
          puts "-------------------------------"
          puts 'Thank you for using GameFinder!'
          puts "-------------------------------"
        else
          puts "#=================================================================#"
          puts "Command not found - Please pick from the list or type exit to quit"
          puts "#=================================================================#"
        end
      end
  end

  #1
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
      puts "#====================================#"
      puts "Your profile has been created"
      puts "Name - #{name_input}"
      puts "Age  - #{age_input}"
      puts "Favorite Genre - #{genre_input}"
      puts "#====================================#"
      new_screen(20)

      choices
      break
    end
  end

#2
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
        puts "#==========================================#"
        puts "***No game found in database by that name***"
        puts "#==========================================#"
        new_screen(20)
        break
      else
        new_screen(21)
        puts "#==========================================#"
        puts "#{a.name} - #{a.genre}"
        puts "#==========================================#"
        new_screen(20)
      end

      break
    end
    choices
  end

  def find_game_by_name
    #while true
    puts "#========================#"
    puts "Please enter name of game"
    puts "#========================#"
    name_of_game_input = gets.chomp
    @game = Game.find_by(name: name_of_game_input)
    #   if @game == nil
    #     new_screen(64)
    #     puts "#==========================================#"
    #     puts "**No game found in database by that name!**"
    #     puts "#==========================================#"
    #     new_screen(20)
    #     break
    #   end
    #   break
    # end
    
    # choices
  end


  # def find_player
  #   puts "#=====================#"
  #   puts "Please enter of player"
  #   puts "#=====================#"
  #   player_name_input = gets.chomp
  #   @player = Player.find_by(name: player_name_input)
  # end

  def find_player(name)
    @player = Player.find_by(name: name)
  end

  #3
  def write_review
    while true
      new_screen(64)
    puts "#=====================#"
    puts "Please enter of player"
    puts "#=====================#"
      name_input = gets.chomp
      find_player(name_input)
      if @player == nil
        new_screen(64)
        puts "#==========================================#"
        puts "**No player found in database by that name!**"
        puts "#==========================================#"
        new_screen(20)
        choices
        break
      end
      find_game_by_name
      
      puts "#=====================================================#"
      puts "Please enter the score you give the game from 0 to 10"
      puts "#=====================================================#"
      score_input = gets.chomp

      # if score_input == "exit" || score_input == "quit"
      #   choices
      #   break
      # else
        puts "#====================================#"
        puts "Please enter your review description"
        puts "#====================================#"
        desc_input = gets.chomp

        Review.create(player_id: @player.id, game_id: @game.id, score: score_input, description: desc_input)

      new_screen(64)
      puts "#==============#"
      puts "Review created!"
      puts "#==============#"
      new_screen(20)
      choices
      break
    
    end
  end

  #4
  def read_review
    while true
      find_game_by_name

      new_screen(64)

      #review = Review.find_by(game_id: @game.id)
      review = Review.where(game_id: @game.id)
      #player_name = Player.find_by(name: 'Drew')
      review.each do |r|
        # review = Review.find(game_id: @game.id)
        #new_screen(64)
        #puts "Review by #{player_name}"
        puts "#========================#"
        puts "Score #{r.score} out of 10"
        puts "#{r.description}"
        puts "#========================#"
        new_screen(5)
      
        #new_screen(20)
      end
      new_screen(10)
      break
    end
    choices

  end

  #5
  def update_review
    while true
      new_screen(64)
      find_player
      find_game_by_name

      found_review = Review.find_by(player_id: @player.id, game_id: @game.id)

      puts "Please enter a new score"
      new_score_input = gets.chomp
      puts "Please enter a new review description"
      new_desc_input = gets.chomp

      found_review.score = new_score_input
      found_review.description = new_desc_input
      found_review.save
      new_screen(64)
      puts "#==================================#"
      puts "Your score #{found_review.score} out of 10"
      puts ""
      puts "Your review description :"
      puts "#{found_review.description}"
      puts "#==================================#"
      new_screen(20)

      choices
      break
    end

  end


#6
  def remove_review
    while true
      new_screen(64)
      find_player
      find_game_by_name

      review_to_remove = Review.find_by(player_id: @player.id, game_id: @game.id)

      review_to_remove.destroy
      new_screen(64)
      puts "#==========================#"
      puts "The review has been deleted"
      puts "#==========================#"
      new_screen(20)


      break
    end
    choices
  end

#7
  def find_favorite_genre_of_player
    while true
      find_player
      new_screen(64)
      puts "#=======================================#"
      puts "The favorite game genre of #{@player.name} is #{@player.favorite_genre}."
      puts "#=======================================#"
      new_screen(20)

      break
    end
    choices
  end

#8
  def list_all_game_names
    while true
      new_screen(25)
      puts "#=============================#"
      all_games = Game.all
      all_games.each do |game|
        puts game.name
      end

      puts "#=============================#"
      new_screen(10)

      choices
      break
    end
  end

  #9
  def add_game

    while true
      new_screen(64)
      puts "Please enter the name of the game"
      puts "------------------------------------------------"
      game_name_input = gets.chomp

      puts "Please enter the game's genre"
      puts "------------------------------------------------"
      puts "Examples - RPG, Action, MOBA, Simulation, Sports"
      puts "------------------------------------------------"
      game_genre_input = gets.chomp
      g = Game.create(name: game_name_input, genre: game_genre_input)
      new_screen(20)
      puts "#====================================#"
      puts "The game has been added to the database"
      puts "Game Name - #{game_name_input}"
      puts "Game Genre - #{game_genre_input}"
      puts "#====================================#"
      new_screen(20)

      choices
      break
    end
  end

   def closing

    #If you re-add the commented lines below in the closing methods the star wars theme title crawl theme will play and the credits will scroll.
    new_screen(64)

    # closing = Music.new('Star_Wars_Theme.wav')
    # closing.play

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
    
   # scrolling(64)

   end

   def scrolling(num)
    num.times do
      sleep 0.3
      new_screen(1)
    end
  end


end

