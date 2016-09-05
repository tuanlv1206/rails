class AddVideoUrlToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :video_url, :string
  end
end
