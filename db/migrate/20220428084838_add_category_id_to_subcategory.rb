class AddCategoryIdToSubcategory < ActiveRecord::Migration[7.0]
  def change
    add_column :subcategories, :category_id, :integer
  end
end
