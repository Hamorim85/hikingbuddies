class EventHikesController < ApplicationController

  EVENT_HIKES = {
    1 => { event_mountain: "Mt. Harvard", event_date: Time.now, event_leave_time: Time.now, location_point: "Wooley", planner: "Rich"},
    2 => { event_mountain: "Mt. Yale", event_date: Time.now, event_leave_time: Time.now, location_point: "Denver", planner: "Edwin" }
  }

  def index
    @event_hikes = EVENT_HIKES
  end

end
