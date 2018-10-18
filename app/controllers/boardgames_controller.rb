class BoardgamesController < ApplicationController
  def index
    @boardgames = Boardgame.all
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
    params.require(:boardgame).permit(:name, :rating, :description)
  end
end
