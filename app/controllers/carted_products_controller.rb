class CartedProductsController < ApplicationController

  def index
    carted_products = CartedProduct.all
    render json:carted_products
  end

  def create
    carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: "nil"
    )
    if carted_products.save #happy path
      render json: carted_products
    else #sad path
      render json: {error_messages: carted_products.errors.full_messages}, status: 422
    end
  end
end
