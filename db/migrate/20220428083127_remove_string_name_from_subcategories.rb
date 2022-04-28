class RemoveStringNameFromSubcategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :subcategories, :string, :string
  end
end
