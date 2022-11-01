class AddUrlImageToGenres < ActiveRecord::Migration[7.0]
  def change
    add_column :genres, :image_url, :string
  end
end
