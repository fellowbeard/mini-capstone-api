class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image_url, :quantity, :is_discounted?, :tax, :total, :supplier
end
