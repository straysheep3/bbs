class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    #code
  end

  def create
    @post = Post.new(params_post)
    @post.save
  end

  def update
    #code
  end

  def destroy
    #code
  end

  private
    def params_post
      params.permit(:user, :comment)
    end
end
