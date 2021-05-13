class AddImageToStories < ActiveRecord::Migration[6.1]
  def change
    add_column :stories, :image, :string
  end
end
