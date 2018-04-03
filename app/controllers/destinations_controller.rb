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
    def featured_destinations
        @featured_destinations = [Destination.find_by(name:"Cuzco"), Destination.find_by(name:"Nairboi"), Destination.find_by(name:"Bagan"), Destination.find_by(name:"El Nido")]
    end
end