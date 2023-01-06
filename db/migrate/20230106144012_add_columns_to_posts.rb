class AddColumnsToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :year, :integer
    add_column :posts, :goods_name, :string
    add_column :posts, :post_category, :string
    add_column :posts, :goods_category, :string
  end
end
