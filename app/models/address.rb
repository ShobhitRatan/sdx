class Address < ApplicationRecord
    belongs_to :user 
    has_many :states 
    has_many :countries
end
