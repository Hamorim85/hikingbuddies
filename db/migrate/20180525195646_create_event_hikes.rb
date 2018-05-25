class CreateEventHikes < ActiveRecord::Migration[5.1]
  def change
    create_table :event_hikes do |t|
      t.string :event_mountain
      t.date :event_date
      t.time :event_leave_time
      t.string :location_point
      t.string :planner

      t.timestamps
    end
  end
end
