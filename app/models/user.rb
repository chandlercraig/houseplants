class User < ApplicationRecord
  validates :first_name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 10, maximum: 255 }

  has_secure_password
    
  has_many :user_houses
  has_many :houses, through: :user_houses
end
