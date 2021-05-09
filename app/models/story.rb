class Story < ApplicationRecord

  # A story can have many comments
  has_many :comments
  # A story can only belong to one user
  belongs_to :user

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  # Changing story URL from number to story title
  def to_param
    id.to_s + '-' + title.parameterize
  end

end
