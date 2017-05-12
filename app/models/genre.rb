class Genre < ApplicationRecord
  # has_many :movies, through: :movie_genres
  has_and_belongs_to_many :movies

  validates :name, presence: true, uniqueness: true
end
