Rails.application.routes.draw do

  get "/products" => "products#index"

  post "/products" => "products#create"
  
  get "/products/:id" => "products#show"
  
  get "/products" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
 
end
