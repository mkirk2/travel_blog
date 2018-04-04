class CommentsController < ApplicationController

    def index
        @destinations = Destinations.all
    end
    def new
        @destination = Destinations.new    
    end
    def delete
        @comment = Comment.find(params[:id])
        @comment.destroy
    end
    def show
        @destination = Destination.find(params[:id])
    end
    def create
        @destination = Destination.create(destination_params)
    end
end