class User < ApplicationRecord

  has_many :stories
  has_many :comments

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

  # Vanity URL
  def to_param
    username
  end

end
