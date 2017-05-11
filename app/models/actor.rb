class Actor < ApplicationRecord
  has_many :movies, through: :actor_movies
end
