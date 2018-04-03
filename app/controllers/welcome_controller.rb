class WelcomeController < ApplicationController
    
  def index
    @featured_destinations = Destination.where :is_feature? => true
    @countries = Country.all
  end
end