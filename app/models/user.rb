class User < ApplicationRecord
  has_many :opinions, dependent: :destroy
  has_one_attached :profile_photo, dependent: :destroy
  has_one_attached :cover_photo, dependent: :destroy
  has_many :followed, class_name: 'Following', foreign_key: 'followed_id', dependent: :destroy
  has_many :followers, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
  validates :name, presence: true, length: { maximum: 10, message: 'name can not exceed 10 characters' }

  validates :profile_photo, content_type: %I[png jpg jpeg],
                            size: { less_than: 1.megabytes,
                                    message: 'is not given between size' }

  validates :cover_photo, content_type: %I[png jpg jpeg],
                          size: { less_than: 2.megabytes,
                                  message: 'is not given between size' }

  validates :name, presence: true, uniqueness: true, length: { minimum: 4, maximum: 8 }

  default_scope { order(created_at: :desc) }
end
