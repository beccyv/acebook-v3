class PostsController < ApplicationController
  def create
  @user = User.find(params[:user_id])
  @post = @user.posts.create(post_params)
  redirect_to user_path(@user)
end

def edit
  @post = Post.find(params[:id])
end

def update
  @user = User.find(params[:user_id])
  @post = @user.posts.find(params[:id])
  @post.update(post: params[:post][:post])
  redirect_to user_path(@user)
end

def destroy
  @user = User.find(params[:user_id])
  @post = @user.posts.find(params[:id])
  @post.destroy
  redirect_to user_path(@user)
end

private
  def post_params
    params.require(:post).permit(:post)
  end
end
