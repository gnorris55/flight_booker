class FlightBookingsController < ApplicationController
    def new
        @flight_booking = FlightBooking.new

        @flight_id = params[:flight] 
        @number_of_passengers = params[:num_passengers]
        @destined_airport = params[:destined_airport]
    end
end
