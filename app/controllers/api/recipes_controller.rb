class Api::RecipesController < ApplicationController
  before_action :authenticate_user

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
      user_id: current_user.id,
      title: params[:title],
      cooktime: params[:cooktime],
      image: params[:image],
      ingredient: params[:ingredient],
      direction: params[:direction],
      tag: params[:hashtag],
    )
    if @recipe.save
      render "show.json.jb"
    else
      render json: { error: @recipe.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
