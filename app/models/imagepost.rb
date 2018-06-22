class Imagepost < ApplicationRecord
  validates :user_id, presence: true
end
