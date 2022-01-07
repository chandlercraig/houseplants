class House < ApplicationRecord
    has_many :user_houses
    has_many :users, through: :user_houses
    has_many :plant_spaces
    has_many :plants, through: :plant_spaces
end