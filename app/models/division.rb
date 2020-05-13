class Division < ApplicationRecord
    has_many :teams 
    has_many :conferences, through: :teams 

    def afc_east_teams 
        east_teams = Team.where(conference_id: 1, division_id: 1) 
    end 

    
end
