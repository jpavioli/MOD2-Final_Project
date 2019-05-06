class ScoresController < ApplicationController

    before_action :current_score, only: [:show, :edit, :update, :destroy]

    def index
        @scores = Score.all
    end

    def show
    end

    def new
        @score = Score.new
    end

    def create
        @score = Score.create(score_params)
        redirect_to @score
    end

    def edit
    end

    def update
        @score.update(score_params)
        redirect_to @score
    end
    
    def destroy
        @score.destroy
        redirect_to score_path
    end

    private

    def score_params
        params.require(:score).permit(:score, :event_id, :team_id)
    end

    def current_score
        @score = Score.find(params[:id])
    end
end