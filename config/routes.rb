Rails.application.routes.draw do
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
end
