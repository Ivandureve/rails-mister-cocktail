class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  validates_associated :doses
  has_many :ingredients, through: :doses
  validates_associated :ingredients
  mount_uploader :photo, PhotoUploader
end
