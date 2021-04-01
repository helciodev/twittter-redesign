class SessionsController < ApplicationController
  before_action :sign_in, except: %i[new create]

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path flash[:success] = 'You have succesfully logged out'
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
