class Opinion < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true,
                      length: { maximum: 140, message: 'opinion can not exceed 140 characters' }
  default_scope { order(created_at: :desc) }
end
