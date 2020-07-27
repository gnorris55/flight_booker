class FlightsController < ApplicationController
    def index
        @flights = Flight.all
    end 

    def search
        @flight = Flight.where()
    end 
end
