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

  def message
    if flash[:notice]
      content_tag(:div, content_tag(:span, flash[:notice]), class: 'alert-success')
    elsif flash[:alert]
      content_tag(:div, content_tag(:span, flash[:alert]), class: 'alert-danger')
    end
  end
end
