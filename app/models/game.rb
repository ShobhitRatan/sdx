class Game < ApplicationRecord
    has_many :gamedays 
    has_many :teams, through: :gamedays 
    has_many :current_seasons 
    has_many :seasons, through: :current_seasons 
end
