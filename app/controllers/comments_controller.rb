class CommentsController < ApplicationController
before_action :set_event

  def new
    @comment = Comment.new
  end

  def create
  end

  private

    def set_event
      @event = Event.find(params[:event_id])
    end

end
