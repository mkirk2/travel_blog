class TipsController < ApplicationController
    
    def index
        @tips = Tip.all
    end
    def new
        @tips = Tip.new    
    end
    def edit
        @tips = Tip.edit
    end
    def show
        @tips = Tip.find(params[:id])
        @tips = Tip.all
    end
    def create
        @tip = Tip.create(klass_params)
    end
end