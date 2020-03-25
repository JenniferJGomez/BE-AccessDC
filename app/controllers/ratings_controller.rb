class RatingsController < ApplicationController
  def show
  end

  def index
    rating = Rating.all
    render json: rating.to_json()
  end
end
