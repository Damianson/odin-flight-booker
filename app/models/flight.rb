class Flight < ApplicationRecord
    belongs_to :departure_airport, class_name: "Airport"
    belongs_to :arrival_airport, class_name: "Airport"

    def self.search(departure_airport_id, arrival_airport_id, flight_date, passenger_count)
        flights = Flight.all
    
        if departure_airport_id.present?
          flights = flights.where(departure_airport_id: departure_airport_id)
        end
    
        flights
    end
end
