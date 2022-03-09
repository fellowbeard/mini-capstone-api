class Product < ApplicationRecord

  def one_product
    one_product = Product.first
    render json: "Hi"
  end

end
