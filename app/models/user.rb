class User < ApplicationRecord
  has_secure_password
    
  has_many :user_houses
  has_many :houses, through: :user_houses
end
