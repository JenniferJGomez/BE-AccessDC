Rails.application.routes.draw do
  resources :users
  resources :locations

  #~~~~~~~favorites routes~~~~~~~#
  post '/favorites', to: 'locations#favorites'
  delete '/favorites/:user_id/:location_id', to: 'locations#destroy_favorite'

  #~~~~~~~reviews routes~~~~~~~~#
  post '/reviews', to: 'locations#reviews'
  delete 'reviews/:user_id/:location_id', to: 'locations#destroy'

  #~~~~~~~ratings routes~~~~~~~~#
  post '/ratings', to: 'locations#ratings'

 
end
