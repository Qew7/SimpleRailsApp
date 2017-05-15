class Genre < ApplicationRecord
  has_many :movies, through: :genre_movies
  has_and_belongs_to_many :movies

  validates :name, presence: true, uniqueness: true
end
