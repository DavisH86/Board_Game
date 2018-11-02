class ReviewsController < ApplicationController

  def new
    @boardgame = Boardgame.find(params[:boardgame_id])
    @review = Review.new
  end

 def create
   @boardgame = Boardgame.find(params[:boardgame_id])
   @review = Review.new(review_params)
   @review.boardgame = @boardgame
   @review.user_id = current_user.id
   # @review = @boardgame.reviews.build(review_params)
   if @review.save
     redirect_to @boardgame
   else
     render :new
   end
 end

  private
  def review_params
    params.require(:review).permit(:rating, :body)
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
