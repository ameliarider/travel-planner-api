Rails.application.routes.draw do
  get "/" => "sessions#create"

  # Authentication
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"

  # Trips
  get "/trips" => "trips#index"
  get "/trips/:id" => "trips#show"
  post "/trips" => "trips#create"
  patch "/trips/:id" => "trips#update"
  delete "/trips/:id" => "trips#destroy"

  # Activities
  get "/activities" => "activities#index"
  get "/activities/:id" => "activities#show"
  post "/activities" => "activities#create"
  patch "/activities/:id" => "activities#update"
  delete "/activities/:id" => "activities#destroy"

  # Hotels
  get "/hotels" => "hotels#index"
  get "/hotels/:id" => "hotels#show"
  post "/hotels" => "hotels#create"
  patch "/hotels/:id" => "hotels#update"
  delete "/hotels/:id" => "hotels#destroy"

  # Locations
  get "/locations" => "locations#index"
  get "/locations/:id" => "locations#show"
  post "/locations" => "locations#create"
  patch "/locations/:id" => "locations#update"
  delete "/locations/:id" => "locations#destroy"

  # Restaurants
  get "/restaurants" => "restaurants#index"
  get "/restaurants/:id" => "restaurants#show"
  post "/restaurants" => "restaurants#create"
  patch "/restaurants/:id" => "restaurants#update"
  delete "/restaurants/:id" => "restaurants#destroy"

  # Travels
  get "/transportations" => "transportations#index"
  get "/transportations/:id" => "transportations#show"
  post "/transportations" => "transportations#create"
  patch "/transportations/:id" => "transportations#update"
  delete "/transportations/:id" => "transportations#destroy"

  # Trip Users
  get "/trip-users" => "trip_users#index"
  get "/trip-users/:id" => "trip_users#show"
  post "/trip-users" => "trip_users#create"
  patch "/trip-users/:id" => "trip_users#update"
  delete "/trip-users/:id" => "trip_users#destroy"
end
