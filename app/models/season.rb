class Season < ApplicationRecord
    has_many :current_seasons 
    has_many :games, through: :current_seasons 
end
