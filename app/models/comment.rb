class Comment < ApplicationRecord
  belongs_to :story

  validates :body, presence: true
end
