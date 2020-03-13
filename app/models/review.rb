class Review < ApplicationRecord

    belongs_to :user
    belongs_to :location

    def reviews_user
        self.all.map{|rev| rev.user.username}
    end

end
