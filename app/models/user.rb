class User < ApplicationRecord
  has_many :microposts
  validates :name, presence: true, length: {maximum: 50}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  def feed
    Micropost.where("user_id = ?", id)
  end
end
