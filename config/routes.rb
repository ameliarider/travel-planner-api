Rails.application.routes.draw do
  # Authentication
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"
end
