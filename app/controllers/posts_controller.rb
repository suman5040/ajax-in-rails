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
    @post = Post.create(post_params)
    @posts = Post.find_all_by_id(@post.id)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    #@posts = Post.all
    @post = Post.find(params[:id])
    @post.update_attributes(post_params)
    @posts = Post.find_all_by_id(@post.id)
  end

  def delete
    @post = Post.find(params[:post_id])
  end

  def destroy
    @post = Post.find(params[:id])
    @deleted_id = @post.id
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :body)
  end
end
