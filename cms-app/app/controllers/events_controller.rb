class EventsController < ApplicationController

    before_action :current_event, only: [:show, :edit, :update, :destroy]

    def index
        @events = Events.all
    end

    def show
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.create(event_params)
        redirect_to (@event)
    end

    def edit
    end

    def update
        @event.update(event_params)
        redirect_to @event
    end
    
    def destroy
        @event.destroy
        redirect_to events_path
    end

    private

    def event_params
        params.require(:event).permit(:title, :description, :score_type)
    end

    def current_event
        @event = Event.find(params[:id])
    end
end
