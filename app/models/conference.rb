class Conference < ApplicationRecord
    has_many :teams 
    has_many :divisions, through: :teams 
end
