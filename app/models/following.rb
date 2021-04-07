class Following < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  belongs_to :followed, class_name: 'User'
  validates :followed, presence: true
  validates :follower, presence: true

  validates :follower, uniqueness: { scope: :followed }
end
