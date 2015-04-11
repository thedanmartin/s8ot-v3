# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

karl = Supporter.create(name: "Karl", years_traveling: "2", ejections: "0")
steve = Supporter.create(name: "Steve", years_traveling: "10", ejections: "3")
betsy = Supporter.create(name: "Betsy", years_traveling: "1", ejections: "3")

trip = trip.create(date: "2015-02-05", location: "New York", opponent: "Red Bulls", opponent_score: "1", fire_score: "0", supporters: [karl, steve])
trip = trip.create(date: "2015-03-05", location: "Kansas City", opponent: "Sporting KC", opponent_score: "0", fire_score: "1", supporters: [betsy, steve])
