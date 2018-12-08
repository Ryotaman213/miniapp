class UsersController < ApplicationController
  def show
    @blogs = current_user.blogs.page(params[:page]).per(4).order("created_at DESC")
  end
end
