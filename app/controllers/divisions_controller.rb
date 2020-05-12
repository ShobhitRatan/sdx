class DivisionsController < ApplicationController
    def index 
        @divisions = Division.all 
    end 

    def show 
        @conference = Conference.find(params[:id]) 
        @division = @conference.divisions.find(params[:id]) 
    end 
end
