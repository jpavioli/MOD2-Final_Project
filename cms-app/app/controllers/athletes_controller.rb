class AthletesController < ApplicationController

    before_action :current_athlete, only: [:show, :edit, :update, :destroy]

    def index
        @athletes = Athlete.all
    end

    def show
    end

    def new
        @athlete = Athlete.new
    end

    def create
        @athlete = Athlete.create(athlete_params)
        redirect_to @athlete
    end

    def edit
    end

    def update
        @athlete.update(athlete_params)
        redirect_to @athlete
    end

    def destroy
        @athlete.destroy
        redirect_to athlete_path
    end

    private

    def athlete_params
        params.require(:athlete).permit(:first_name, :last_name, :hometown, :state, :bio, :gender, :jersey_number, :age, :weight, :height, :team_id)
    end

    def current_athlete
        @athlete = Athlete.find(params[:id])
    end

end
