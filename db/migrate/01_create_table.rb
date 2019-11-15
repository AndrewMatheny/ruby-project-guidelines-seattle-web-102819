class CreateTable < ActiveRecord::Migration[5.0]
    def change
        create_table :players do |player|
            player.string :name
            player.integer :age
            player.string :favorite_genre
        end
        create_table :games do |game|
            game.string :name
            game.string :genre 
        end
        create_table :reviews do |review|
            review.integer :player_id
            review.integer :game_id
            review.integer :score
            review.string :description
        end
    end
end