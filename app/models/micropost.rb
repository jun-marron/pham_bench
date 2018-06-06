class Micropost < ApplicationRecord
  belongs_to :user
  # default scope -> { order('created_at DESC')}
  validates :content, presence: true, length: { maximum: 200 }
  validates :user_id, presence: true
end
