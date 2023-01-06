class HomesController < ApplicationController
  before_action :authenticate_user!, except: [:top]
  def top
    @posts = Post.all.includes(:user).order(created_at: :desc)
  end
end
