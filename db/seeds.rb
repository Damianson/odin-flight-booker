# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#["SFO", "LAX", "JFK", "ORD", "DFW", "ATL", "DEN", "LAS", "SEA", "MIA"].each do |code|
#  Airport.create(code: code)
#end
sfo = Airport.find_by(code: "SFO")
lax = Airport.find_by(code: "LAX")
jfk = Airport.find_by(code: "JFK")
ord = Airport.find_by(code: "ORD")
dfw = Airport.find_by(code: "DFW")
atl = Airport.find_by(code: "ATL")
den = Airport.find_by(code: "DEN")
las = Airport.find_by(code: "LAS")
sea = Airport.find_by(code: "SEA")
mia = Airport.find_by(code: "MIA")

flights = [
  { departure_airport: sfo, arrival_airport: jfk, start_datetime: DateTime.new(2024, 10, 15, 8, 0, 0), duration: 360 },
  { departure_airport: lax, arrival_airport: ord, start_datetime: DateTime.new(2024, 11, 20, 10, 30, 0), duration: 300 },
  { departure_airport: jfk, arrival_airport: dfw, start_datetime: DateTime.new(2024, 12, 5, 13, 45, 0), duration: 240 },
  { departure_airport: ord, arrival_airport: atl, start_datetime: DateTime.new(2024, 9, 10, 16, 15, 0), duration: 200 },
  { departure_airport: dfw, arrival_airport: den, start_datetime: DateTime.new(2024, 8, 25, 19, 30, 0), duration: 150 }
]

flights.each do |flight|
    Flight.create(flight)
  end