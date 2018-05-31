class CommentsController < ApplicationController
before_action :set_event

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.event = @event
    @comment.save
    redirect_to event_path(@event)
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end


    def set_event
      @event = Event.find(params[:event_id])
    end

end
