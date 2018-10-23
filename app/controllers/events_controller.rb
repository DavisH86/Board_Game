class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id

    if @event.save
      flash[:notice] = "Event added successfully."
      render :show
    else
      flash[:error] = "Please try again."
      render :new
    end
  end

  def update

    @event = Event.find(params[:id])
    @event.users << current_user #user currently signed-in after click join

    if @event.save
      flash[:notice] = "You have join an event!"
      redirect_to :action => "show"
    else
      flash[:error] = "Sorry you have not joined an event."
    end
  end

  def edit
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :location)
  end
end
