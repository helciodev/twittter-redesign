class User < ApplicationRecord
  has_many :opinions, dependent: :destroy
  has_one_attached :profile_photo, dependent: :destroy
  has_one_attached :cover_photo, dependent: :destroy
  has_many :followed, class_name: 'Following', foreign_key: 'followed_id', dependent: :destroy
  has_many :followers, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
  validates :name, presence: true, length: { maximum: 10, message: 'name can not exceed 10 characters' }

  validates :profile_photo, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                    size: { less_than: 700.kilobytes, message: 'Profile Picture size needs to be lesser than 500 kbs' }
  validates :cover_photo, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                         size: { less_than: 1024.kilobytes, message: 'Coverimage size needs to be lesser than 500 kbs' }
end
