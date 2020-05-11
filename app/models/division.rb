class Division < ApplicationRecord
    has_many :teams 
    belongs_to :conference 
end
