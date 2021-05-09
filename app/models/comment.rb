class Comment < ApplicationRecord
  # Each comment can only belong to 1 story
  belongs_to :story
  # Each comment can only belong to 1 user
  belongs_to :user

  validates :body, presence: true
end
