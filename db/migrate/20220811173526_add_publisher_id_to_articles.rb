class AddPublisherIdToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :publisher_id, :integer
    add_index :articles, :publisher_id
  end
end
