class FollowingsController < ApplicationController
  def create
    user = User.find(params[:followee_id])
    current_user.follow(user)
    redirect_to root_path
  end

  def destroy
    current_user.unfollow(params[:id])
    redirect_to root_path
  end
end
