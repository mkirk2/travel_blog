class CountriesController < ApplicationController
    
    def index
        @countries = Country.all
    end
    def new
        @countries = Country.new    
    end
    def edit
        @countries = Country.edit
    end
    def show
        @country = Country.find(params[:id])
        @destinations = Destination.all
    end
    def create
        @country = Country.create(klass_params)
    end
end