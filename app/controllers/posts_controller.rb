class PostsController < ApplicationController
  def create
  @user = User.find(params[:user_id])
  @post = @user.posts.create(post_params)
  redirect_to user_path(@user)
end

def edit
  @user = User.find(params[:user_id])
  @post = @user.posts.find(params[:id])
end

def update
  # @post = Post.find(params[:id])
  @user = User.find(params[:user_id])
  @post = @user.posts.find(params[:id])

  if @post.update(post_params)
    redirect_to user_path(@user)
  else
    render 'edit'
  end
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
