class Imagepost < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :image, presence: true
  validates :user_id, presence: true
  validates :user_id, presence: true
end
