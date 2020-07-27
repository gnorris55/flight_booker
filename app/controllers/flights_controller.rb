class FlightsController < ApplicationController
    def index
        @flights = Flight.all
        @flight_options = Airport.all.map { |a| [ a.code, a.id ] }
        @flight_date = Flight.all.map { |f| [f.start_date, f.start_date] }
    end 

    def search
        @flights = Flight.where("from_airport_id LIKE ? AND to_airport_id LIKE ? OR start_date LIKE ?", 
                                params[:from_airport], params[:to_airport], params[:start_date]) 
                                
        flash[:no_data] = "no flights found"
    end 
    #:from_airport_id => :from_airport, 
    #:to_airport_id => :to_airport, 
    #:start_date => :start_date).all
end
