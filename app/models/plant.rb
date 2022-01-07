class Plant < ApplicationRecord
	belongs_to :plant_space
  belongs_to :house
end
