class Opinion < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :user_id, presence: true
  validates :content, presence: true,
                      length: { maximum: 250, message: 'opinion can not exceed 250 characters' }
  default_scope { order(created_at: :desc) }
end
