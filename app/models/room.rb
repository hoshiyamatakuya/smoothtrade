class Room < ApplicationRecord
  #dm機能で使う
  has_many :entries, dependent: :destroy
  has_many :messages, dependent: :destroy

  #通知で使う
  has_many :notifications, dependent: :destroy

end
