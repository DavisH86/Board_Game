class Api::V1::BoardgamesController < ApplicationController
protect_from_forgery unless: -> { request.format.json? }

  def index
    render json: Boardgame.all
  end
  def new
    boardgame = Boardgame.new
  end

  def show
    boardgame = Boardgame.find(params[:id])
    render json: boardgame
  end
  #   reviews = beer.reviews
  #   obj = {
  #     beer: beer,
  #     reviews: reviews
  #   }
  #   render json: obj
  # end
end
