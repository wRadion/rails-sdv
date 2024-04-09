class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts/create
  def create
    Post.create(content: params[:post][:content])
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
end
