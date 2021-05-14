class Page < ApplicationRecord

  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
  validates :url, presence: true, uniqueness: true

end
