class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    add_reference(:movies, :director, foreign_key: true)
    add_reference(:movie_genres, :movie, foreign_key: true)
    add_reference(:movie_genres, :genre, foreign_key: true)
    add_reference(:movie_actors, :movie, foreign_key: true)
    add_reference(:movie_actors, :actor, foreign_key: true)
  end
end
