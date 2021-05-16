class User < ApplicationRecord

  has_many :stories
  has_many :comments
  has_many :favourites

  has_secure_password

  # Add avatar uploader
  mount_uploader :avatar, AvatarUploader

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  # Vanity URL
  def to_param
    username
  end

end
