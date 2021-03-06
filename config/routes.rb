Rails.application.routes.draw do

  #Users routes
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/user_index/:id" => "users#user_index"

  #Sessions routes
  post "/sessions" => "sessions#create"

  #Entries routes
  get "/entries" => "entries#index"
  post "/entries" => "entries#create"
  get "/entries/:id" => "entries#show"
  delete "/entries/:id" => "entries#destroy"
  patch "/entries/:id" => "entries#update"
  get "/home" => "entries#home_index"

  #Observed Bodies routes
  get "/observed_bodies" => "observed_bodies#index"
  post "/observed_bodies" => "observed_bodies#create"
  get "/observed_bodies/:id" => "observed_bodies#show"
  get "/observed_bodies/ob_show/:id" => "observed_bodies#ob_show"

  #Spacelog routes
  get "/space_logs" => "space_logs#index"

  #Image Routes
  get "/images" => "images#index"
  post "/images" => "images#create"
  get "/images/:id" => "images#show"
  patch "/images/:id" => "images#update"
  delete "images/:id" => "images#destroy"

  #Search Routes
  get "/bodysearch/:name" => "observed_bodies#search"
end
