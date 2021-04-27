module ApplicationHelper
  def login?
    if session[:user_id].present?
      render 'layouts/main_template'
    else
      render 'layouts/login'
    end
  end
  # bug  is at @user

  def user_profile_photo(user)
    user.profile_photo.attached? ? user.profile_photo : 'default-profile-photo.png'
  end

  def user_cover_photo(user)
    user.cover_photo.attached? ? user.cover_photo : 'default-cover'
  end

  def message
    if flash[:notice]
      content_tag(:div, content_tag(:span, flash[:notice]), class: 'alert-success')
    elsif flash[:alert]
      content_tag(:div, content_tag(:span, flash[:alert]), class: 'alert-danger')
    end
  end

  def render_who_to_or_user
    if params[:controller] == 'opinions'
      render 'users/who-to-follow'
    else
      render 'users/profile-user-friends'
    end
  end

  def like_or_dislike_btn(post)
    like = Like.find_by(post: post, user: current_user)
    if like
      link_to('Dislike!', post_like_path(id: like.id, post_id: post.id), method: :delete)
    else
      link_to('Like!', post_likes_path(post_id: post.id), method: :post)
    end
  end
end
