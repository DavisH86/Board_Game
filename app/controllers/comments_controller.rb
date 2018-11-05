class CommentsController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @comment = Comment.new
  end

 def create
   @event = Event.find(params[:event_id])
   @comment = Comment.new(comment_params)
   @comment.event = @event
   @comment.user_id = current_user.id

   if @comment.save
     redirect_to @event
   else
     render :new
   end
 end

   private
   def comment_params
     params.require(:comment).permit(:body)
   end
end
