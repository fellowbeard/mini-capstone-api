class OrdersController < ApplicationController
  # before_action :authenticate_user

  def index
    orders = Order.all
    order = current_user.orders
    render json: orders.as_json
  end

  def show
    order = Order.find_by(id:params["id"])
    order = current_user.orders.find_by(id: params[:id])
    render json: order.as_json
  end

  def create
    product = Product.find_by(id: params[:product_id])
    
    calculated_subtotal = product.price * params[:quantity].to_i
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax 
    
    order = Order.new(
    user_id: params[:user_id],
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: calculated_total
    )
    if order.save
      carted_products.update_all(status: "purchased", order_id: order.id)
      render json: order.as_json
    else
      render json: {error_messages: order.errors.full_messages}, status: 422
    end
  end

end
