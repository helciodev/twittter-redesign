class AddFollowerIdFollowedIdToFollowings < ActiveRecord::Migration[6.1]
  def change
    add_column :followings, :follower_id, :integer
    add_column :followings, :followed_id, :integer
  end
end
