class ProductsController < ApplicationController

  def one_product
    one_product = Product.first
    render json: one_product.as_json
  end

  def all_products
    all_products = Product.all
    render json: all_products.as_json
  end

end
