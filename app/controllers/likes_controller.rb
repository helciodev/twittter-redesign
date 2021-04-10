class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(opinion_id: params[:opinion_id])
    if @like.save
      notice: 'You liked an opinion.'
    else
      alert: 'You cannot like this opinion.'
    end
    redirect_to opinions_path
  end

  def destroy
    like = Like.find_by(id: params[:id], user: current_user, opinion_id: params[:opinion_id])
    if like
      like.destroy
      notice: 'You disliked a post.'
    else
      alert: 'You cannot dislike post that you did not like before.'
    end
    redirect_to opinions_path
  end
end
