require_relative '../config/environment'

cli = CommandLineInterface.new
cli.intro
cli.choices
#cli.find_favorite_genre_of_player
#cli.write_review
cli.read_reviews
cli.closing

# intro
# choices
# #binding.pry
# #create_player
# #find_genre_by_game
# test_method
# closing

