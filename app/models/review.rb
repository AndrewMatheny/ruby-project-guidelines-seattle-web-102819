class Review < ActiveRecord::Base
    belongs_to :players
    belongs_to :games
end