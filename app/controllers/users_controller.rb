class UsersController < ApplicationController
  def index
    @users = User.limit(5)
  end

  def show
    @user = User.find(params[:id])
    @opinions = @user.opinions.all.order(created_at: :desc)
    @followers = @user.followers.all.order(created_at: :desc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Welcome to the app #{@user.name}"
    else
      redirect_to login_path, notice: 'Failed to create account. Try again'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_photo, :cover_photo, :full_name)
  end
end
