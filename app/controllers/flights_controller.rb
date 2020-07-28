class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @flight_options = Airport.all.map { |a| [ a.code, a.id ] }
        @flight_date = Flight.all.map { |f| [f.start_date, f.start_date] }
    end 

    def search
        @flights = Flight.where("from_airport_id LIKE ? AND to_airport_id LIKE ? AND num_of_passengers + ? <= 50", 
                                params[:from_airport], params[:to_airport], params[:amount_pass]) 
                                
        flash[:no_data] = "no flights found"
    end 
    #:from_airport_id => :from_airport, 
    #:to_airport_id => :to_airport, 
    #:start_date => :start_date).all
end
