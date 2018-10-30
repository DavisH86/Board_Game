class Api::V1::BoardgamesController < ApplicationController

  def index
    boardgames = Boardgame.all
    render json: boardgames
  end
  def new
    boardgame = boardgame.new
  end

  def search
    @boardgames = Boardgame.where("title ILIKE ?", "%#{params['search_string']}%")
    render json: @boardgames
  end
  def show
    boardgame = Boardgame.find(params[:id])
  #   reviews = beer.reviews
  #   obj = {
  #     beer: beer,
  #     reviews: reviews
  #   }
  #   render json: obj
  end
end
