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
        @destinations = @country.destinations
    end
    def create
        @country = Country.create(country_params)
    end

    private
    def country_params
        params.require(:name).permit(:continent, :costs, :tips)
    end
end