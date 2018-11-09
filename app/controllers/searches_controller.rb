class SearchesController < ApplicationController
  def search
    @results = []
    @type = params[:search_type]

    if @type == "Boardgame"
      @results = Boardgame.where('title ILIKE?', "%#{params[:keyword]}%")
    elsif @type == "Event"
      @results = Location.where('name ILIKE?', "%#{params[:keyword]}%").first.events
    elsif @type == "Group"
      @results = Group.where('name ILIKE?', "%#{params[:keyword]}%")
    end
  end

  def show
    @search = Search.find(params[:id])
  end


end
