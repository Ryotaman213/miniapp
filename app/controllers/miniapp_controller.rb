class MiniappController < ApplicationController

    before_action :move_to_index, except: :index

  def index
    @blogs = Blog.includes(:user).page(params[:page]).per(4).order("created_at DESC")

  end

  def new
  end

  def create
    Blog.create(text: blog_params[:text], user_id: current_user.id)
  end

  def destroy
    blog = Blog.find(params[:id])
    blog.destroy if blog.user_id == current_user.id
  end

    private
      def blog_params
      params.permit(:text, :created_at)
    end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
