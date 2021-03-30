class Opinion < ApplicationRecord
  belongs_to :author, class_name: 'user', foreign_key: 'author_id'
  validates :content, presence: true, message: "can't be blank",
                      length: { maximum: 140, message: 'opinion can not exceed 140 characters' }
end
