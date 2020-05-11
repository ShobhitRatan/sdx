class Division < ApplicationRecord
    has_many :teams 
    has_many :conferences, through: :teams 

end
