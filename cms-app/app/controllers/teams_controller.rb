class TeamsController < ApplicationController

    before_action :current_team, only: [:show, :edit, :update, :destroy]

    def index
        @teams = Team.all
    end

    def show
    end

    def new
        @team = Team.new
    end

    def create
        @team = Team.new(team_params)

        if @team.valid? 
            @team.save
            redirect_to @team
        else
            flash[:error] = @team.errors.full_messages
            redirect_to new_team_path
        end
    end

    def edit
    end

    def update
        if @team.valid? 
            @team.update(team_params)
            redirect_to @team
        else
            flash[:error] = @team.errors.full_messages
            redirect_to edit_team_path
        end
    end

    def destroy
        @team.destroy
        redirect_to teams_path
    end

    private

    def team_params
        params.require(:team).permit(:name, :location, :sponsor, :team_type, :mascot, :competition_id)
    end

    def current_team
        @team = Team.find(params[:id])
    end

end
