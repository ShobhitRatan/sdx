class DivisionsController < ApplicationController
    def index 
        @divisions = Division.all 
    end 

    def show 
        @division = Division.find_by(params[:id]) 
    end 
    
    private 
    def division_params 
        params.require(:division).permit(:region) 
    end 
end
