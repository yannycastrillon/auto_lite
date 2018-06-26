Rails.application.routes.draw do
  get 'search_vehicles/search'

  root to: 'vehicles#home'

  get '/vehicles/search', to: 'search_vehicles#search_price'

  resources :vehicles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
