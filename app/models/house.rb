class House < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  belongs_to :user
  has_many :plant_spaces
  has_many :plants, through: :plant_spaces
end
