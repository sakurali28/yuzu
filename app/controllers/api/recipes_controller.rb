class Api::RecipesController < ApplicationController
  before_action :authenticate_user

  def index
    @recipes = Recipe.where(user_id: current_user.id).order(id: :desc)
    render "index.json.jb"
  end

  def show
    @recipe = Recipe.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @recipe = Recipe.new({
      user_id: current_user.id,
      name: params[:name],
      image: params[:image],
      servings: params[:servings],
      cooktime: params[:cooktime],
      ingredients: params[:ingredients],
      directions: params[:directions],
      notes: params[:notes],
    })
    if @recipe.save
      render "show.json.jb"
    else
      render json: { errors: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @recipe = Recipe.find_by(id: params["id"])
    @recipe.name = params["name"] || @recipe.name
    @recipe.image = params["image"] || @recipe.image
    @recipe.servings = params["servings"] || @recipe.servings
    @recipe.cooktime = params["cooktime"] || @recipe.cooktime
    @recipe.ingredients = params["ingredients"] || @recipe.ingredients
    @recipe.directions = params["directions"] || @recipe.directions
    @recipe.notes = params["notes"] || @recipe.notes

    if @recipe.save
      render "show.json.jb"
    else
      render json: { error: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = Recipe.find_by(id: params["id"])
    @recipe.destroy
    render json: { message: "deleted successfully!" }
  end
end
