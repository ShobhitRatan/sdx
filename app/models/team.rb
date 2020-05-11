class Team < ApplicationRecord
    belongs_to :conference 
    belongs_to :division 
    has_many :gamedays 
    has_many :games, through: :gamedays 
end
