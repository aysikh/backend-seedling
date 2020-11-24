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
    # byebug
    user = User.find(params[:user_id])
    prompt = Prompt.find(params[:prompt_id])
    @dailyentry = DailyEntry.new(
      rating: params[:rating],
      content: params[:content],
      user: user,
      prompt: prompt
    )
  #  byebug
    if @dailyentry.save
      render json: {
        daily_entry: @dailyentry,
        errors: false
      }
    else
      render json: {
        errors: true, 
        info: ["try again"]
      }
    end
  end

  def update
    @dailyentry = DailyEntry.find(params[:id])
    @dailyentry.update(
      rating: params[:rating],
      content: params[:content])
  end


  # private
  

  # def daily_entry_params
  #   params.require(:dailyentry).permit(:rating, :content, :user_id, :prompt_id)
  # end

end
