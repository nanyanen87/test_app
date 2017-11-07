class User < ApplicationRecord
  validates :email, presence: true
  validates :email, presence: true, length: { maximum: 255 }
  
  # has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
