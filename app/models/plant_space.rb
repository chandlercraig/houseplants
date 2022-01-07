class PlantSpace < ApplicationRecord
	belongs_to :house
  has_many :plants
end
