class Api::RecipeTagsController < ApplicationController
  before_action :authenticate_user

  def create
    @recipe_tag = RecipeTag.new({
      recipe_id: params[:recipe_id],
      tag_id: params[:tag_id],
    })
    if @recipe_tag.save
      render "show.json.jb"
    else
      render json: { errors: @recipe_tag.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe_tag = RecipeTag.find_by(tag_id: params[:tag_id], recipe_id: params[:recipe_id])
    @recipe_tag.destroy
    render json: { message: "recipe_tag deleted!" }
  end
end
