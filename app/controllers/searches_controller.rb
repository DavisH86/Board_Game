class SearchesController < ApplicationController
  def search
    @results = []
    @type = params[:search_type]

    if @type == "Boardgame"
      @results = Boardgame.where('title ILIKE?', "%#{params[:keyword]}%")
    elsif @type == "Event_Location"
      if @results = Location.where('name ILIKE ? OR address ILIKE ?', "%#{params[:keyword]}%", "%#{params[:keyword]}%").first != nil
        @results = Location.where('name ILIKE ? OR address ILIKE ?', "%#{params[:keyword]}%", "%#{params[:keyword]}%").first.events
      else
        @results = []
      end
    elsif @type == "Group"
      @results = Group.where('name ILIKE?', "%#{params[:keyword]}%")
    end
  end

end
