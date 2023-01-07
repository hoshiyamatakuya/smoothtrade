class Entry < ApplicationRecord
  #dm機能で使う
  belongs_to :user
  belongs_to :room
end
