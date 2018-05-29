class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
    redirect_to events_path
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to events_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to events_path
  end

  private

    def event_params
      params.require(:event).permit(:event_mountain, :event_date, :location_point, :event_leave_time, :planner, :description)
    end

    def set_event
      @event = Event.find(params[:id])
    end
end



