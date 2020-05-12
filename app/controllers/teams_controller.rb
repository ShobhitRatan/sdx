class TeamsController < ApplicationController
    def index 
        @teams = Team.all 
        @conference = Conference.all 
        @division = Division.all 
    end 

    def show 
        @team = Team.find(params[:id]) 
    end 
end
