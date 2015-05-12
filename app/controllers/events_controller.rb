class EventsController < ApplicationController
 
before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @event.save
  end

  def create
    @event = Event.new(params[:id])
      if @event.save
        redirect_to new_user_event_path, notice: "New Event Posted"
      else 
        # flash[:alert] = "There was an error"
        render :new
    end
  end

  def show
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.update(params[:id])
    if 
      @event.update_attributes(event_params)
    else 
      flash[:alert] = "Error"
    end
  end

  def destroy
  end

  private 

  # def event_params
  #   params.require(:event).permit(:title, :body, :incentive).merge(:user_id)
  # end

  def set_event
    @event = Event.find(params[:id])
  end

end
