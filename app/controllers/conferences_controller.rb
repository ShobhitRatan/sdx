class ConferencesController < ApplicationController
    def index 
        @conferences = Conference.all 
    end 

    def show 
        @conference = Conference.find_by(params[:id]) 
    end 
    
    private 
    def conference_params 
        params.require(:conference).permit(:name) 
    end 
end
