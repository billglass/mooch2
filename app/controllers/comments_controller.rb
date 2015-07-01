class CommentsController < ApplicationController

  def new
  end

  def create
    @event = Event.find(params[:event_id])
    @comment = @event.comments.build(comment_params.merge(user: current_user))
    if @comment.save
      redirect_to @event
    else
      flash.now[:alert] = "error"
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private 

  def comment_params
    params.require(:comment).permit(:body)
  end
end
