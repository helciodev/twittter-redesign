class AddFolloweeIdToFollowing < ActiveRecord::Migration[6.1]
  def change
    add_column :followings, :followee_id, :integer
  end
end
