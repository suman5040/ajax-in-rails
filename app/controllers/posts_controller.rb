class PostsController < ApplicationController
  respond_to :html, :js

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @posts = Post.all
    @post = Post.create(post_params)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @posts = Post.all
    @post = Post.find(params[:id])

    @post.update_attributes(post_params)
  end

  def delete
    @post = Post.find(params[:post_id])
  end

  def destroy
    @posts = Post.all
    @post = Post.find(params[:id])
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
