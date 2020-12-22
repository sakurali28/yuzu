class Api::RecipeHashtagsController < ApplicationController
  before_action :authenticate_user

  def create
    @recipe_hashtag = RecipeHashtag.new(
      recipe_id: params[:recipe_id],
      hashtag_id: params[:hashtag_id],
    )
    @recipe_hashtag.save
    render json: { message: "created successfully!" }
  end
end
