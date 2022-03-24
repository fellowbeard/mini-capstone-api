class AddProductIdToCategoryProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :category_products, :product_id, :integer
  end
end
