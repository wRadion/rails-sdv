class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts/create
  def create
    Post.create(params[:post])
    redirect_to posts_path
  end

  # GET /posts/:id/edit
  def edit
    @post = Post.find(params[:id])
  end

  # PATCH /posts/:id
  def update
    @post = Post.find(params[:id])
    @post.update(content: params[:post][:content])
    redirect_to posts_path
  end

  # DELETE /posts/:id
  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end
end
