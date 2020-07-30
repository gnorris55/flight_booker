class Flight < ApplicationRecord
    belongs_to :from_airport, class_name: "Airport"
    belongs_to :to_airport, class_name: "Airport"

    has_many :flight_bookings, foreign_key: "flight_id"
    has_many :passengers, through: :flight_bookings
end
