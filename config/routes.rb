Rails.application.routes.draw do
  resources :sightings
  resources :squirrels
  resources :projects
  resources :locations
  
  get '/import_gpx', to: 'application#import_gpx', as: 'import_gpx'
  get '/map', to: 'maps#heat', as: 'maps_heat'
end
