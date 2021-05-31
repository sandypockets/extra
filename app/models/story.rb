class Story < ApplicationRecord


  # A story can have many comments
  has_many :comments, dependent: :destroy
  # A story can have many favourites
  has_many :favourites, dependent: :destroy
  # A story can only belong to one user
  belongs_to :user

  # Add Trix Rich Text Editor
  has_rich_text :body

  # Add image uploader
  mount_uploader :image, ImageUploader

  validates :title, presence: true
  # Ensure stories are a minimum of 600 characters (about 1 paragraph)
  validates :body, presence: true, length: { minimum: 600 }

  # Changing story URL from number to story title
  def to_param
    id.to_s + '-' + title.parameterize
  end

end
