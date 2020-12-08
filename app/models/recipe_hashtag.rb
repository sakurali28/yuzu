class RecipeHashtag < ApplicationRecord
  belongs_to :hashtag
  belongs_to :recipe
end
