class Api::HashtagsController < ApplicationController
  before_action :authenticate_user

  def index
    @hashtags = Hashtag.where(user_id: current_user.id)
    render "index.json.jb"
  end

  def show
    @hashtag = Hashtag.find(params[:id])
    render "show.json.jb"
  end

  def create
    @hashtag = Hashtag.new(
      tag: params[:tag],
    )
    @hashtag.save
    render json: { message: "hashtag created!" }
  end

  def update
    @hashtag = Hashtag.find_by(id: params["id"])
    @hashtag.tag = params["tag"] || @hashtag.tag
    @hashtag.save
  end

  def destroy
    @hashtag = Hashtag.find_by(id: params["id"])
    @hashtag.destroy
    render json: { message: "hashtag deleted!" }
  end
end
