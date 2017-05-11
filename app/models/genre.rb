class Genre < ApplicationRecord
	has_many :movies through: :movie_genres
end
