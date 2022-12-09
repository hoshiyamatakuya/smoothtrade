class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :post_category
end
