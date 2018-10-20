class BoardgamesController < ApplicationController
  def index
    @boardgames = Boardgame.order(:title)
  end
  def new
    @boardgame = Boardgame.new
  end
  def create
  end

  def edit
  end


  private
  def boardgame_params
    params.require(:boardgame).permit(:title, :rating, :description)
  end
end
