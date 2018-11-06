class RoundsController < ApplicationController
  def show
    @round.boardgames = Boardgame.where(id: params[:event][:boardgame_ids])
  end
  def create
    @rounds = Round.all
    @even.boardgames = Boardgame.where(id: params[:event][:boardgame_ids])
    @boardgames = @event.boardgames
    @round.boardgame = @boardgames
    @event = Event.find(params[:event_id])
    @round.event = @event

    if @round.save
      redirect_to @show
    else
      render @score
    end
  end

   private
   def round_params
     params.require(:round).permit(:number)
   end
end
