class PostsController < ApplicationController
  before_action :user_signed_in?, only: [:new, :create]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
  end

  def index
    
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end