class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    @user = User.new
    if user
      log_in user
      redirect_back_or root_url
    else
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
    flash[:notice] = 'Logout successfuly'
  end

  private

  def logged_in?
    !current_user.nil?
  end
end
