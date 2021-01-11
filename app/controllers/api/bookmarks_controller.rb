class Api::BookmarksController < ApplicationController
  before_action :authenticate_user

  def index
    @bookmarks = Bookmark.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def show
    @bookmark = Bookmark.find(params[:id])
    render "show.json.jb"
  end

  def create
    @bookmark = Bookmark.new({
      user_id: current_user.id,
      name: params[:name],
      url: params[:url],
    })
    if @bookmark.save
      render "show.json.jb"
    else
      render json: { errors: @bookmark.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    @bookmark.name = params[:name] || @bookmark.name
    @bookmark.url = params[:url] || @bookmark.url

    if @bookmark.save
      render "show.json.jb"
    else
      render json: { errors: @bookmark.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    render json: { message: "bookmark deleted!" }
  end
end
