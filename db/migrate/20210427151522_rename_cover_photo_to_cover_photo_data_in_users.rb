class RenameCoverPhotoToCoverPhotoDataInUsers < ActiveRecord::Migration[6.1]
  def up
    rename_column :users, :cover_photo_data, :cover_photo
  end

  def def down 
    rename_column :users, :cover_photo, :cover_photo_data
  end
end
