class Director < ApplicationRecord
  has_attached_file :photo, styles: { medium: "400x600#", thumb: "150x250#" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  has_many :movies, as: :collectable

  validates :name, presence: true
end
