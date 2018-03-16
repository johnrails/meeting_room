class HighlightsController < ApplicationController
  def show
    @meeting = Meeting.find(params[:meeting_id])
    @highlight = @meeting.highlights.find(params[:id])
  end

  def new
    @meeting = Meeting.find(params[:meeting_id])
    @highlight = @meeting.highlights.build
  end

  def edit
  end

  def create
    @meeting = Meeting.find(params[:meeting_id])
    @highlight = @meeting.highlights.build(highlight_params)
    if @highlight.save
      redirect_to @meeting, notice: 'Highlight created!'
    else
      render :new
    end
  end

  protected

  def highlight_params
    params.require(:highlight).permit(:highlight_text, :start_time, :end_time)
  end
end
