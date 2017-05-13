json.extract! movie, :id, :title, :duration, :director_id, :actor_ids, :genre_ids, :rating, :description, :created_at, :updated_at
json.url movie_url(movie, format: :json)
