class PostsController < ApplicationController
	before_action :set_Post, only: [:show, :destroy]
 
  def index
    @posts = Post.order('created_at DESC')
  end
 
  def new
    @post = Post.new
  end
 
  def show
  end
 
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def destroy
    	@post.destroy

    	redirect_to posts_path
	end
 
  private
 
  def post_params
    params.require(:post).permit(:title, :description, :image)
  end
 
  def set_Post
    @post = Post.find(params[:id])
  end
end
