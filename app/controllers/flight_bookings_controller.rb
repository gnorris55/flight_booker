class FlightBookingsController < ApplicationController
    def new
        @flight_booking = FlightBooking.new(flight_id: params[:flight], passenger_number: params[:num_passengers])
        @destined_airport = params[:destined_airport]
    end
end
