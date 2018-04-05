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
        @comment = Comment.new
        @comment.destination_id = @destination.id
    end
    def create
        @destination = Destination.create(destination_params)
        @comment = Comment.new( :destination => @destination )
    end
end