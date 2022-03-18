class ProductsController < ApplicationController
  
  def index
    all_products = Product.all
    render json: all_products
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      image_url: params["image_url"]
    )
  if product.save #happy path
    render json: product
  else #sad path
    render json: {error_messages: product.errors.full_messages}, status: 422
  end

  end

  def show
    one_product = Product.find_by(id: params["id"])
    render json: one_product
  end

  def update
    product_id = params["id"]
    product = Product.find(product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description
    product.image_url = params["image_url"] || product.image_url

    if product.save #happy path
      render json: product
    else #sad path
      render json: {error_messages: product.errors.full_messages}, status: 422
    end
  end

  def destroy
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: {message: "This product has been destroyed!"}
  end
end
