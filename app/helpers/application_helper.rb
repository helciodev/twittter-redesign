module ApplicationHelper
  def user_login?
    if session[:user_id].present?
      render 'layouts/main-template'
    else
      render 'sessions/new'
    end
  end
end
