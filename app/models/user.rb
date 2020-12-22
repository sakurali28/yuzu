class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { in: 8..20 }, confirmation: true

  has_many :recipes
  has_many :hashtags
end
