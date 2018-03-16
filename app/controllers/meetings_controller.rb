class MeetingsController < ApplicationController

  def index
  end

  def new
    @meeting = Meeting.new
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def edit
  end

  def create
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to @meeting, notice: "Meeting created!"
    else
      render :new, @meeting
    end
  end

  protected
  def meeting_params
    params.require(:meeting).permit(:title, :organizer_email, :start_time, :end_time)
  end
end
