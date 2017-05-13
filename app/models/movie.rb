class Movie < ApplicationRecord
  has_attached_file :poster, styles: { medium: "400x600#", thumb: "150x250#" }
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/

  has_many :genres, through: :movies_genres
  has_many :actors, through: :actor_movies
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :actors

  has_one :director

  validates :title, presence: true
  validates :director, presence: true
end
