module ApplicationHelper
  def login?
    if session[:user_id].present?
      render 'layouts/main_template'
    else
      render 'users/login'
    end
  end 

  def user_profile_photo(user)
    user.profile_photo.attached? ? user.profile_photo : 'default-profile'
  end
end
