class EventsController < ApplicationController
 
before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
      if @event.save
        redirect_to @event, notice: "New Event Posted"
      else 
        flash[:alert] = "There was an error"
        render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private 

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :body, :incentive)
  end

end
