class AddMovieImageToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :movie_image, :string
  end
end
