class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :addresses 
    has_many :payments 
    #validates :name, presence: true, 
     #                   uniqueness: { case_sensitive: false}, 
      #                  length: {minimum: 3, maximum: 25}
    #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    #validates :email, presence: true, 
     #               uniqueness: { case_sensitive: false}, 
      #              length: {minimum: 3, maximum: 105},
       #             format: { with: VALID_EMAIL_REGEX }
end
