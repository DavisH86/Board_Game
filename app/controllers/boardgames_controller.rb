class BoardgamesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @boardgames = Boardgame.all

    if params[:search]
      @boardgames = Boardgame.search(params[:search])
    else
      @boardgames = Boardgame.all
    end
  end

  def search
    if params[:title] == ""
      @boardgames = []
    else
      @boardgames = Boardgame.where('title ILIKE?', "%#{boardgame_params[:title]}%")
    end
  end

  def new
    @boardgame = Boardgame.new
  end

  def show
    @boardgame = Boardgame.find(params[:id])
    @reviews = @boardgame.reviews
  end

  def create
    @boardgame = Boardgame.new(boardgame_params)

    if @boardgame.save
      flash[:notice] = "Boardgame added successfully"
      render :show
    else
      flash[:error] = "Please try again"
      render :new
    end
  end

  private
  def boardgame_params

    params.require(:boardgame).permit(:title, :rating, :description, :keyword)
  end
end
