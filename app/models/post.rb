class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :post_category

  validates :title, presence: true, length: { maximum: 40 }
  validates :body, presence: true, length: { maximum: 1000 }
end
