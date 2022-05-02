class AddColumnSubcategoryIdToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :subcategory_id, :integer
  end
end
