module ApplicationHelper
  def login?
    if session[:user_id].present?
      render 'layouts/main_template'
    else
      render 'users/login'
    end
  end 

  def user_profile_photo
    current_user.profile_photo.attached? ? current_user.profile_photo : 'default-profile'
  end
end
