class Passenger < ApplicationRecord
    belongs_to :flight_booking
    has_many :flights, through: :flight_booking, source: :flight
end
