class FlightBooking < ApplicationRecord
    has_many :passengers
    belongs_to :flight
end
