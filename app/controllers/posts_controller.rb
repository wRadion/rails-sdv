class PostsController < ApplicationController
  before_action :check_if_logged

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
    post = Post.new(post_params)
    post.user = User.find(session[:user_id])

    if post.save
      redirect_to posts_path
    else
      flash[:errors] = post.errors.full_messages
      redirect_to new_post_path
    end
  end

  # GET /posts/:id/edit
  def edit
    @post = Post.find(params[:id])
  end

  # PATCH /posts/:id
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end

  # DELETE /posts/:id
  def destroy
    Post.find(params[:id]).destroy
    redirect_to posts_path
  end

  private

    def post_params
      params.require(:post).permit(:content)
    end

    def check_if_logged
      redirect_to login_path if session[:user_id].nil?
    end
end
