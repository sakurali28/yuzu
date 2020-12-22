class Hashtag < ApplicationRecord
  belongs_to :user
  has_many :recipe_hashtags
  has_many :recipes, through: :recipe_hashtags
end
