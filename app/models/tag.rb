class Tag < ApplicationRecord
  belongs_to :user
  has_many :recipe_tags
  has_many :recipes, through: :recipe_tags
end
