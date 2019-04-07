class PostsController < ApplicationController
  def new
    # give the model View
    @post = Post.new
  end

  def create
    # use strong-prameter
    post = Post.new(post_params)
    # save data to DB
    post.save
    # redirect to top-page
    redirect_to post_path(post.id)
  end
  #show all posts
  def index
    @posts = Post.all
  end
  #show the post in details
  def show
    @post = Post.find(params[:id])
  end
  #edit the post
  def edit
    @post = Post.find(params[:id])
  end
  #edit the post and update it to DB
  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end
  #delete the post from
  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end
  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end
