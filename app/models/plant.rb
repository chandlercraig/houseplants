class Plant < ApplicationRecord
  validates :name, presence: true, uniqueness: true

	has_many :plant_spaces
  has_many :houses, through: :plant_spaces
end
