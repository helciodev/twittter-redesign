class User < ApplicationRecord
  has_many :opinions, dependent: :destroy
  has_one_attached :profile_photo, dependent: :destroy
  has_one_attached :cover_photo, dependent: :destroy
  has_many :followed, class_name: 'Following', foreign_key: 'followed_id', dependent: :destroy
  has_many :followers, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
  validates :name, presence: true, length: { maximum: 10, message: 'name can not exceed 10 characters' }

  validates :profile_photo, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                            dimension: { width: { min: 800, max: 900 },
                                         height: { min: 600, max: 1800 }, message: 'is not given between dimension' }

  validates :cover_photo, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg'],
                          dimension: { width: { min: 900, max: 2400 },
                                       height: { min: 1024, max: 1800 }, message: 'is not given between dimension' }
end
