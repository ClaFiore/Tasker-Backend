class Api::V1::TeamsController < ApplicationController

    def index
        teams = Team.all 
        render json: teams, except: [:created_at, :updated_at], include: [:team_members => {except: [:created_at, :updated_at]}]
    end

    def show
        team = Team.find_by(id: params[:id])
        render json: team, except: [:created_at, :updated_at], include: [:team_members => {except: [:created_at, :updated_at]}]
    end

end
