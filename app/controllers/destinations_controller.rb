class DestinationsController < ApplicationController

    def index
        @destinations = Destinations.all
    end
    def new
        @destination = Destinations.new    
    end
    def edit
        @destination = Destination.edit
    end
    def show
        @destination = Destination.find(params[:id])
    end
    def create
        @destination = Destination.create(destination_params)
    end
end