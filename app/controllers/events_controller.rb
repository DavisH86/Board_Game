class EventsController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]

  def index
    @events = Event.all
    @boardgames = Boardgame.all
    @locations = Location.all
  end

  def new
    @event = Event.new
    @users = @event.users
  end

  def search
    if params[:name] == ""
      @events = []
    else
      @events = Event.where('name ILIKE?', "%#{event_params[:name]}%")
    end
  end

  def create
    @event = Event.new(event_params)
    @event.boardgames = Boardgame.where(id: params[:event][:boardgame_ids])
    @event.organizer = current_user
    @boardgames = @event.boardgames
    @locations = @event.location_id
    @score = Score.new


    if @event.save
      flash[:notice] = "Event added successfully."
      render :show
    else
      flash[:error] = "Please try again."
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
    @boardgames = @event.boardgames
    @comments = @event.comments
    @score = Score.new
    @round = @event.boardgames

  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to (@event)
    else
      render :edit
    end
  end

  def join
    @event = Event.find(params[:id])
    @event.users << current_user

    if @event.save
      redirect_to (@event)
    else
      render :show
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :location_id, :round, :eventdate, boardgame_ids: [])
  end
end
