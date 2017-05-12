class Actor < ApplicationRecord
  has_attached_file :photo, styles: { medium: "400x600#", thumb: "150x250#" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  has_many :movies, through: :actor_movies
  # has_and_belongs_to_many :movies

  validates :name, presence: true
end
