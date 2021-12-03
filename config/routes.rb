Rails.application.routes.draw do

  #Users routes
  get "/users" => "users#index"
  post "/users" => "users#create"

  #Sessions routes
  post "/sessions" => "sessions#create"

  #Entries routes
  get "/entries" => "entries#index"
  post "/entries" => "entries#create"
  get "/entries/:id" => "entries#show"
end
