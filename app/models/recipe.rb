class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :ingredient, presence: true
  validates :direction, presence: true
  validates :cooktime, numericality: { greater_than: 0 }
end
