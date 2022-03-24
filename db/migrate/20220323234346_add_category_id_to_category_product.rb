class AddCategoryIdToCategoryProduct < ActiveRecord::Migration[7.0]
  def change
    add_column :category_products, :category_id, :integer
  end
end
