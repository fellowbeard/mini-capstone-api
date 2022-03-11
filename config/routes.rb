Rails.application.routes.draw do

  get "/one_product" => "products#one_product"

  get "/all_products" => "products#all_products"

  get "/all_products/:price" => "products#all_products"

end
