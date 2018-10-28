class ReviewsController < ApplicationController

  private
  def review_params
    params.require(:review).permit(:name, :description)
  end

  def authorize_user
    if !user_signed_in? || !current_user.admin?
      raise ActionController::RoutingError.new("Not Found")
    end
  end
end
