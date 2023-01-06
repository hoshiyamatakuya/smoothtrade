class AddWishBodyToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :wish_body, :string, null: false
  end
end
