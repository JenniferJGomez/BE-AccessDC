class Location < ApplicationRecord
    has_many :reviews
    has_many :ratings
    has_many :favorites 

    has_many :users, through: :favorites

    # create instance method to average location ratings()

    def find_average  
        result = array.sum(0.0)/array.size
        return result
    end

end
