# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning Databse....'
Event.destroy_all

puts 'Creating Events...'
Events_attributes = [
{
  event_mountain:    "QUANDRY",
  event_date:         "2017-6-26",
  location_point:     "Wooley Mamouth",
  event_leave_time: "2000-01-01 00:00:00",
  planner:              "Richard",
  description:          "easy hike this week"
},
{
  event_mountain:    "Harvard",
  event_date:         "2018-6-26",
  location_point:     "Wooley Mamouth",
  event_leave_time: "2000-01-01 00:00:00",
  planner:              "Richard",
  description:          "easy hike this week"
},
{
  event_mountain:    "Colombia",
  event_date:         "2018-7-26",
  location_point:     "Wooley Mamouth",
  event_leave_time: "2000-01-01 09:03:00",
  planner:              "Edward",
  description:          "Hard hike this week"
},
{
  event_mountain:    "Longs Peak",
  event_date:         "2018-8-26",
  location_point:     "Wooley Mamouth",
  event_leave_time: "2000-01-01 09:03:00",
  planner:              "Carrie Big Sis",
  description:          "Moderate hike this week"
}
]

Event.create!(Events_attributes)
puts 'Finished!'
