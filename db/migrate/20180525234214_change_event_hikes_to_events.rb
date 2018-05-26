class ChangeEventHikesToEvents < ActiveRecord::Migration[5.1]
  def change
    rename_table :event_hikes, :events
  end
end
