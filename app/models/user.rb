class User < ApplicationRecord
  has_secure_password
  validates :first_name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :last_name, presence: true, length: { minimum: 3, maximum: 25 }
  validates :email, presence: true, uniqueness: true, length: { minimum: 10, maximum: 255 }
    
  has_many :houses
end
