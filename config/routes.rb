Rails.application.routes.draw do
  resources :users
  resources :locations

  #~~~~~~~favorites routes~~~~~~~#
  post '/favorites', to: 'locations#favorites'
  delete '/favorites/:user_id/:location_id', to: 'locations#destroy'

  #~~~~~~~reviews routes~~~~~~~~#
  post '/reviews', to: 'locations#reviews'

  #~~~~~~~ratings routes~~~~~~~~#
  post '/ratings', to: 'locations#ratings'

 
end
