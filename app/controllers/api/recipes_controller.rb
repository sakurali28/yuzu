class Api::RecipesController < ApplicationController
  before_action :authenticate_user

  def index
    @recipes = Recipe.where(user_id: current_user.id).order(id: :desc)

    search = params[:search]
    if search
      @recipes = @recipes.where("title LIKE ?", "%#{search}%")
    end

    render "index.json.jb"
  end

  def show
    @recipe = Recipe.find_by(id: params["id"])
    render "show.json.jb"
  end

  def create
    @recipe = Recipe.new(
      user_id: current_user.id,
      title: params[:title],
      cooktime: params[:cooktime],
      image: params[:image],
      ingredient: params[:ingredient],
      direction: params[:direction],
    )
    if @recipe.save
      render "show.json.jb"
    else
      render json: { error: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @recipe = Recipe.find_by(id: params["id"])
    @recipe.title = params["title"] || @recipe.title
    @recipe.cooktime = params["cooktime"] || @recipe.cooktime
    @recipe.image = params["image"] || @recipe.image
    @recipe.ingredient = params["ingredient"] || @recipe.ingredient
    @recipe.direction = params["direction"] || @recipe.direction

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
