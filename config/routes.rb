Rails.application.routes.draw do
  get 'search_vehicles/search'
  root to: 'vehicles#home'
  get '/vehicles/search', to: 'search_vehicles#search_price', as: :search_price
  resources :vehicles
end
