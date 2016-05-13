class PostsController < ApplicationController

  def index
    
  end

  def new
    @post = Post.new
  end

  def create
    @posts = Post.new post_params

    if @post.save
      redirect_to @post, notice: "Sucess! Your Post has been saved!"
    else
      render 'new', notice: "Sorry, your post wasn't successfully saved."
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
