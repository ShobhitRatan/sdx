class CurrentSeason < ApplicationRecord
    belongs_to :game 
    belongs_to :season 
end
