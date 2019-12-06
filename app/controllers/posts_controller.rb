class PostsController < ApplicationController

  #before_action :authenticate_admin!, except: [:index, :show, :new, :edit]

  def index
    @posts = Post.all.reorder("created_at desc")
    @email = Email.new
  end

  def show
    @post = Post.friendly.find(params[:id])
    @recent_posts = Post.all.reorder("created_at desc").limit(2)
    @email = Email.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "You just created " + @post.title + "!"
      redirect_to post_path(@post)
    else
      flash.now[:alert] = 'Whoa! Something went wrong!'
      render 'new'
    end
  end

  def edit
    @post = Post.friendly.find(params[:id])
  end

  def update
    @post = Post.friendly.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:notice] = "Good job!"
      redirect_to post_path(@post)
    else
      flash.now[:alert] = 'Bad job!'
      render 'edit'
    end
  end

  def destroy
    @post = Post.friendly.find(params[:id]).destroy
    redirect_to root_url
    flash[:notice] = "Delete successful."
  end

  private

    def authenticate_admin!
      @post = Post.friendly.find(params[:id])
      unless @post.username == "aheil4250" && @post.keycode == "BBhh19!!"
        redirect_to root_url
        flash[:notice] = "You do not have access to this page."
      end
    end

    def post_params
      params.require(:post).permit(:username, :keycode, :title, :image, :image_bottom, :image_square, :image_credit, :image_bottom_credit, :image_square_credit, :tagline, :content, :color, :readtime, :element)
    end

end