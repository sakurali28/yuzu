class RecipeHashtag < ApplicationRecord
  belongs_to :recipe
  belongs_to :hashtag
end
