Rails.application.routes.draw do
  resources :sightings
  resources :squirrels
  resources :projects
  resources :locations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
