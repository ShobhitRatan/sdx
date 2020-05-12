class GamesController < ApplicationController
    def index 
        @games = Game.all 
        @teams = Team.all 
        @season = Season.all 
    end 

    def show 
        @game = Game.find(params[:id]) 
    end 
    
end
