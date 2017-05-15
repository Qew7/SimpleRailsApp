class CreateReferences < ActiveRecord::Migration[5.1]
  def change
    add_reference(:movies, :director, foreign_key: true)
    add_reference(:genre_movies, :movie, foreign_key: true)
    add_reference(:genre_movies, :genre, foreign_key: true)
    add_reference(:actor_movies, :movie, foreign_key: true)
    add_reference(:actor_movies, :actor, foreign_key: true)
  end
end
