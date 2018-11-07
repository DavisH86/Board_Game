class ScoresController < ApplicationController

  def create
    @score = Score.new(params)
    @boardgame = Boardgame.where(id: params[:event][:boardgame_id])
    @score.boardgame = @boardgame
    @user = User.where(id: params[:event][:user_id])
    @score.user << @user

    if @score.save
      redirect_to @event
    else
      render @score
    end
  end

  def update
    @boardgame = Boardgame.where(id: params[:event][:boardgame_id])
    @user = User.where(id: params[:event][:user_id])
    @score = Score.find(params[:id])
    @score.users << @user

    if @score.save
      redirect_to @event
    else
      render @score
    end
  end

   private
   def score_params
     params.require(:score).permit(:win, :lose, user_id: [])
   end
end
