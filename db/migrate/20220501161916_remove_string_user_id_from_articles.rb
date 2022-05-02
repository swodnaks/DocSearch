class RemoveStringUserIdFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :user_id, :string
  end
end
