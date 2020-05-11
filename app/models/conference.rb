class Conference < ApplicationRecord
    has_many :divisions 
    has_many :teams 
end
