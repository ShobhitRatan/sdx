class Game < ApplicationRecord
    has_many :game_days 
    has_many :teams, through: :game_days 
    has_many :current_seasons 
    has_many :seasons, through: :current_seasons 
end
