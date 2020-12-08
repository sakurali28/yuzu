class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :ingredient, presence: true
  validates :direction, presence: true
  validates :cooktime, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :recipe_hashtags
  has_many :hashtags, through: :recipe_hashtags
end
