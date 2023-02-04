class AddNotificationsToCommentId < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :comment_id, :integer
    add_index :notifications, :comment_id
  end
end

