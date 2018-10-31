class EventsController < ApplicationController
  before_action :authenticate_user!

  def index

    @events = Event.all
    @boardgames =Boardgame.all
    render json: @events
  end

  def create
    @event = Event.new(event_params)
    @event.boardgames = Boardgame.where(id: params[:event][:boardgame_ids])
    @event.organizer = current_user
    @boardgames = @event.boardgames

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
    render json: @event
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
    render json: @event
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :location, boardgame_ids: [])
  end
end
