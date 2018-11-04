class ScoresController < ApplicationController
  def create
    @score = Score.new(score_params)
    @boardgame = Boardgame.find(params[:boardgame_id])
    @score.user = User.where(id: params[:event][:user_id])

    if @score.save
      redirect_to @event
    else
      render @score
    end
  end

   private
   def score_params
     params.require(:score).permit(:win, :lose)
   end
end
