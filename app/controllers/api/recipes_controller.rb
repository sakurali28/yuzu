class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render "index.json.jb"
  end

  def show
    @recipe = Recipe.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @recipe = Recipe.new(
      title: params[:title],
      cooktime: params[:cooktime],
      image: params[:image],
      ingredient: params[:ingredient],
      direction: params[:direction],
      user_id: params[:user_id],
    )
    # @recipe.save
    # render "show.json.jb"
    if @recipe.save
      render "show.json.jb"
    else
      render json: { error: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
