class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name])
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
end
