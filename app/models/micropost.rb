class Micropst < ApplicationRecord
  belongs_to :users
  default scope -> { order('created_at DESC')}
  validates :content, presence: true, length: { maximum: 200 }
  validates :user_id, presence: true
end
