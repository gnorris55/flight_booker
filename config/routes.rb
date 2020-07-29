Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :flights
  resources :airports

  get '/search' => 'flights#search'
  get '/new_booking' => 'flight_bookings#new'
  
  root "flights#index"
end
