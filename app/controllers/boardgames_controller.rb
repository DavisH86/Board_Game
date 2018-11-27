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
    @reviews = @boardgame.reviews.order(:created_at).reverse
    @review = Review.new
  end

  def create
    @boardgame = Boardgame.new(boardgame_params)
    @users = @boardgame.users

    if @boardgame.save
      flash[:notice] = "Boardgame added successfully"
      render :show
    else
      flash[:error] = "Please try again"
      render :new
    end
  end

  def edit
    @boardgame = Boardgame.find(params[:id])
  end

  private
  def boardgame_params

    params.require(:boardgame).permit(:title, :rating, :description, :keyword, :boardgame_photo)
  end
end
