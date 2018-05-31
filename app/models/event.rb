class Event < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :event_mountain, :event_date, :event_leave_time, :location_point, :planner, :description, presence: true
end
