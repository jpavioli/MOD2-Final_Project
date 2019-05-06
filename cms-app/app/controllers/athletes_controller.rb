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
        @athlete = Athlete.new(athlete_params)

        if @athlete.valid? 
            @athlete.save
            redirect_to @athlete
        else
            flash[:error] = @athlete.errors.full_messages
            redirect_to new_athlete_path
        end
    end

    def edit
    end

    def update
        if @athlete.valid? 
            @athlete.save
            redirect_to @athlete
        else
            flash[:error] = @athlete.errors.full_messages
            redirect_to edit_athlete_path
        end
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
