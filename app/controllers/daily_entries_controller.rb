class DailyEntriesController < ApplicationController

  def index
    @dailyentries = DailyEntry.all
    render json: @dailyentries
  end

  def show
    @dailyentry = DailyEntry.find(params[:id])
    render json: @dailyentry
  end

  def create
    @dailyentry = DailyEntry.new(daily_entry_params)
    render json: @dailyentry
  end

  private
  
  def find_daliy_entry
    @dailyentry = DailyEntry.find(params[:id])
  end

  def daily_entry_params
    params.require(:dailyentry).permit(:rating, :content, :user_id, :prompt_id)
end
