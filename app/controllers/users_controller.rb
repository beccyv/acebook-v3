class UsersController < ApplicationController
  skip_before_action :require_login, only: :new
  skip_before_action :require_login, only: :create

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @allposts = @user.posts.order("updated_at DESC")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_url, notice: "Successfully signed up!"
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :password, :email, :first_name, :last_name)
    end

end
