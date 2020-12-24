class Tag < ApplicationRecord
  belongs_to :user
  has_many :recipe_tags
  has_many :recipe, through: :recipe_tags
end
