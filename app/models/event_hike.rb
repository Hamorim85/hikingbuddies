class EventHike < ApplicationRecord
  validates :event_mountain, :event_date, :event_leave_time, :location_point, presence: true
end
