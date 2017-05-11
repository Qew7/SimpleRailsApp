class Genre < ApplicationRecord
  has_many :movies, through: :movie_genres

  validates :name, presence: true
end
