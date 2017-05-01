json.extract! movie, :id, :title, :duration, :director, :rating, :description, :created_at, :updated_at
json.url movie_url(movie, format: :json)
