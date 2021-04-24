class User < ApplicationRecord
  has_many :opinions, dependent: :destroy
  has_one_attached :profile_photo, dependent: :destroy
  has_one_attached :cover_photo, dependent: :destroy

  has_many :active_relationships, class_name: 'Following', foreign_key: :follower_id
  has_many :followees, through: :active_relationships

  has_many :passive_relationships, class_name: 'Following', foreign_key: :followee_id
  has_many :followers, through: :passive_relationships

  validates :profile_photo, content_type: %I[png jpg jpeg],
                            size: { less_than: 1.megabytes,
                                    message: 'is not given between size' }

  validates :cover_photo, content_type: %I[png jpg jpeg],
                          size: { less_than: 2.megabytes,
                                  message: 'is not given between size' }

  validates :name, presence: true, uniqueness: true, length: { minimum: 4, maximum: 8 }
  validates :full_name, presence: true, uniqueness: true, length: { minimum: 10, maximum: 25 }

  default_scope { order(created_at: :desc) }

  def follow(user)
    followees << user unless following?(user)
  end

  def unfollow(user)
    followees.delete(user)
  end

  def following?(user)
    followees.include?(user)
  end

  # Status feed
  def feed
    following_ids = "SELECT followee_id FROM followings
                     WHERE  follower_id = :user_id"
    Opinion.where("user_id IN (#{following_ids})
                     OR user_id = :user_id", user_id: id)
  end
end
