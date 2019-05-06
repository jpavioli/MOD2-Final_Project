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
        @competition = Competition.new(competition_params)

        if @competition.valid? 
            @competition.save
            redirect_to @competition
        else
            flash[:error] = @competition.errors.full_messages
            redirect_to new_competition_path
        end
    end

    def edit
    end

    def update
        if @competition.valid? 
            @competition.save
            redirect_to @competition
        else
            flash[:error] = @competition.errors.full_messages
            redirect_to edit_competition_path
        end
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
