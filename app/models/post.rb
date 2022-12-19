class Post < ApplicationRecord
  mount_uploader :post_image, ImageUploader
  belongs_to :user
  validates :title, presence: true, length: { maximum: 255 }
  validates :body, presence: true, length: { maximum: 2_000 }
end
