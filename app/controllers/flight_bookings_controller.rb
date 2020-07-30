class FlightBookingsController < ApplicationController
    def index 
        @flight_bookings = FlightBooking.all
    end 

    def new
        @flight_booking = FlightBooking.new
        @flight_booking.passengers.build

        @flight_id = params[:flight] 
        @number_of_passengers = params[:num_passengers]
        @destined_airport = params[:destined_airport]

    end

    def create
        @flight_booking = FlightBooking.new(flight_booking_params)
        @flight_booking.passengers.build(flight_booking_params[:passenger_attributes])

        if @flight_booking.save
            redirect_to root_path
            p @flight_booking.passengers.first
        else
            redirect_to new_booking_path
        end

    end

    private
    def flight_booking_params
        params.require(:flight_booking).permit(:flight_id, :passenger_number, passenger_attributes:[:name,:email, :flight_id])

    end

end
