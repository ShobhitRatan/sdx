class User < ApplicationRecord
    has_many :addresses 
    has_many :payments 
    has_secure_password 
end
