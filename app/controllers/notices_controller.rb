class NoticesController < ApplicationController
  before_action :authenticate_user!, except: [:top]
  def top
    @notices = Notice.all.order(created_at: :desc).page(params[:page])
  end
end
