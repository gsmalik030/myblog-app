class PostsController < ApplicationController
  def index
    set_user
    @posts = @user.posts.paginate(page: params[:page], per_page: 3)
  end

  def show
    set_post
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end
