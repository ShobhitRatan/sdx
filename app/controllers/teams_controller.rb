class TeamsController < ApplicationController
    def index 
        @teams = Team.all 
        @conference = Conference.all 
        @division = Division.all 
    end 

    def show 
        @team = Team.find_by(params[:id]) 
    end 

    private 
    def team_params 
        params.require(:team).permit(:conference_id, :division_id, :name, :city) 
    end 
end
