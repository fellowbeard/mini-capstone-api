class ProductsController < ApplicationController

  def one_product
    one_product = Product.first
    render json: one_product.as_json
  end
  
  def all_products
    all_products = Product.all
    render json: all_products.as_json
  end
  
  def one_price
    product_price = params[:price]
    product_name = Product.find_by(price: product_price)
    render json: {this_is_the_product: product_name}
  end

end
