class Favourite < ApplicationRecord
  belongs_to :story
  belongs_to :user

  # Ensuring that there is only 1 story favourited per user (user cannot favourite the same story twice)
  validates :story, uniqueness: { scope: :user }
end
