class PlantSpace < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  
	belongs_to :house
  belongs_to :plant
end
