class Api::RecipeTagsController < ApplicationController
  before_action :authenticate_user

  def create
    tag_name = params[:tag_name]

    @recipe = Recipe.find(params[:recipe_id])
    @tag = Tag.find_or_create_by(name: tag_name, user_id: current_user.id)

    @recipe_tag = RecipeTag.new({
      recipe_id: @recipe.id,
      tag_id: @tag.id,
    })
    if @recipe_tag.save
      render json: { message: "created successfully!" }
    else
      render json: { errors: @recipe_tag.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe_tag = RecipeTag.find_by(recipe_id: params[:recipe_id], tag_id: params[:tag_id])
    @recipe_tag.destroy
    render json: { message: "deleted successfully!" }
  end
end
