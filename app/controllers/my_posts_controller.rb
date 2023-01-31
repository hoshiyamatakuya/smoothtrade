class MyPostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all.includes(:user).order(created_at: :desc).page(params[:page])
  end
end
