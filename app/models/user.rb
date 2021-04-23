class User < ApplicationRecord
  has_many :opinions, dependent: :destroy
  has_one_attached :profile_photo, dependent: :destroy
  has_one_attached :cover_photo, dependent: :destroy
  has_many :followers, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
  has_many :followees, class_name: 'Following', foreign_key: 'followee_id', dependent: :destroy

  validates :profile_photo, content_type: %I[png jpg jpeg],
                            size: { less_than: 1.megabytes,
                                    message: 'is not given between size' }

  validates :cover_photo, content_type: %I[png jpg jpeg],
                          size: { less_than: 2.megabytes,
                                  message: 'is not given between size' }

  validates :name, presence: true, uniqueness: true, length: { minimum: 4, maximum: 8 }
  validates :full_name, presence: true, uniqueness: true, length: { minimum: 10, maximum: 25 }

  default_scope { order(created_at: :desc) }
end
