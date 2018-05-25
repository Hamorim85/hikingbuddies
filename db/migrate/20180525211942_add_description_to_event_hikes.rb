class AddDescriptionToEventHikes < ActiveRecord::Migration[5.1]
  def change
    add_column :event_hikes, :description, :text
  end
end
