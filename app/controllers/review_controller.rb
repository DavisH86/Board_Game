class ReviewsController < ApplicationController

  def new
   @event = Event.find(params[:event_id])
   @review = Review.new
 end

 def create
   @event = Event.find(params[:event_id])
   @review = @product.reviews.build(review_params)
   @review.user = current_user

   if @review.save
     redirect_to @event
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
