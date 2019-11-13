def intro
    puts "Welcome to GameFinder!  This application allows users to find a great game based on their interests!"
    puts "----------------------------------------------------------------------------------------------------"
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

