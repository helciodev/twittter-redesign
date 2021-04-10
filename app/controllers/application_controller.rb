class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def return_if_logged
    store_location
    flash[:danger] = 'Please log in.'
    redirect_to login_url
  end

  def logged_in_user
    return_if_logged unless logged_in?
  end
end
