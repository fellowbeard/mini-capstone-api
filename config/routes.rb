Rails.application.routes.draw do

  get "/products" => "products#index"

  post "/products" => "products#create"
  
  get "/products/:id" => "products#show"
  
  get "/products" => "products#update"

  delete "/products/:id" => "products#destroy"

  get "/suppliers" => "suppliers#index"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/orders" => "orders#index"

  get "/orders/:id" => "orders#show"
  
  post "/orders" => "orders#create"

  post "/carted_products" => "carted_products#create"

  get "/carted_products" => "carted_products#index"
 
end
