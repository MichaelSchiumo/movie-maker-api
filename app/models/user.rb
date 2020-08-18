class User < ApplicationRecord
  has_many :movies, through: :reviews
  has_many :reviews
  has_secure_password
end
