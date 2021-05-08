class Story < ApplicationRecord

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  # Changing story URL from number to story title
  def to_param
    id.to_s + '-' + title.parameterize
  end

end
