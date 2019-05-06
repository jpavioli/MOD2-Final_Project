class CompetitionsController < ApplicationController

    before_action :current_competition, only: [:show, :edit, :update, :destroy]

    def index
        @competitions = Competition.all
    end

    def show
    end

    def new
        @competition = Competition.new
    end

    def create
        @competition = Competition.create(competition_params)
        redirect_to @competition
    end

    def edit
    end

    def update
        @competition.update(competition_params)
        redirect_to @competition
    end
    
    def destroy
        @competition.destroy
        redirect_to competition_path
    end

    private

    def competition_params
        params.require(:competition).permit(:name, :description, :location, :datetime, :status)
    end

    def current_competition
        @competition = Competition.find(params[:id])
    end
end
