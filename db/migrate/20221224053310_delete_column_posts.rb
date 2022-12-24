class DeleteColumnPosts < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :posts, :categories
    remove_reference :posts, :category

    remove_foreign_key :posts, :post_categories
    remove_reference :posts, :post_category
  end
end
