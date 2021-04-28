class RenameProfilePhotoToProfilePhotoDataInUsers < ActiveRecord::Migration[6.1]
  def up
    rename_column :users, :profile_photo, :profile_photo_data
  end

  def down
    rename_column :users, :profile_photo_data, :profile_photo
  end
end
