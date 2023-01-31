class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true, length: { maximum: 250 }
  #通知で使う
  has_many :notifications, dependent: :destroy

end
