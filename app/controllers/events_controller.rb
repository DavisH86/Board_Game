class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
  end

  def edit
  end

  private
  def user_params
    params.require(:event).permit(:name, :description)
  end
end
