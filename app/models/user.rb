class User < ApplicationRecord
    has_many :reviews
    has_many :ratings
    has_many :favorites 

    has_many :locations, through: :favorites
   
end
