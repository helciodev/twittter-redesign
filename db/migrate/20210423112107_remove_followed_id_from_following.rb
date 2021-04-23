class RemoveFollowedIdFromFollowing < ActiveRecord::Migration[6.1]
  def change
    remove_column :followings, :followed_id, :integer
  end
end
