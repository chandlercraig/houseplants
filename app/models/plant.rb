class Plant < ApplicationRecord
	has_many :plant_spaces
  has_many :houses, through: :plant_spaces
end
