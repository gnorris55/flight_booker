class Airport < ApplicationRecord
    has_many :flight_departures, foreign_key: "from_airport_id", class_name: "Flight"
    has_many :flight_arrivals, foreign_key: "to_airport_id", class_name: "Flight"
end
