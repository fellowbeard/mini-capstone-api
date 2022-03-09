class ProductsController < ApplicationController
  def one_product
    one_product = Product.first
    render json: "Hi"
  end

  def all_products
    all_products = Product.all
    render json: "hi"
  end
end
