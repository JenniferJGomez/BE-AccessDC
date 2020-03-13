class LocationsController < ApplicationController
  
  def index
    locations = Location.all
    render json: locations.to_json(
      :include => {:users =>
        {:except => [:created_at, :updated_at]}}
    )
  end

  def show
    location = Location.find(params[:id])
    render json: location.to_json(
      :include => {:reviews =>
        {:include => :user}}
    )
  end

  def favorites
    favorite = Favorite.find_or_create_by(user_id: params[:user_id], location_id: params[:location_id])
    render json: favorite
  end
end
