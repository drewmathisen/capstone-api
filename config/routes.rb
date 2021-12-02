Rails.application.routes.draw do

  #Users routes
  get "/users" => "users#index"
  post "/users" => "users#create"

  #Sessions routes
  post "/sessions" => "sessions#create"
end
