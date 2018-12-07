class MiniappController < ApplicationController

  def index
    @blogs = Blog.all.order("updated_at DESC").page(params[:page]).per(4)
  end

  def new
  end

  def create
    Blog.create(blog_params)
  end

    private
      def blog_params
      params.permit(:text)
    end

end
