class DailyEntriesController < ApplicationController
  before_action :find_daily_entries, only: [:show, :edit]
  
  def index
    @dailyentries = DailyEntry.all
    render json: @dailyentries
  end

  def show
    @dailyentry = DailyEntry.find(params[:id])
    render json: @dailyentry
  end

  def new
    @dailyentry = DailyEntry.new(params[:id])
    render json: @dailyentry
  end

  def create
    # byebug
    user = User.find(params[:user_id])
    prompt = Prompt.find(params[:prompt_id])
    @dailyentry = DailyEntry.new(
      rating: params[:rating],
      content: params[:content],
      date: DateTime.now,
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
        info: ["entry cannot be created"]
      }
    end
  end

  def edit
  end

  def update
    @dailyentry = DailyEntry.find(params[:id])
    if @dailyentry
      @dailyentry.update(
          rating: params[:rating],
          content: params[:content],
      )
      render json: {
        daily_entry: @dailyentry,
        errors: false
      }
      else
        render json: {
          errors: true, 
          info: ["cannot update info"]
        }
      end
  end

  def destroy 
    daileyentries = DailyEntry.all
    @dailyentry = find_daily_entries
    if @dailyentry.destroy
        render json: {
            daileyentries: daileyentries, 
            errors: "Entry has been deleted",
            success: true
        }
    else 
        render json: {
            success: false,
            errors: false,
            info: ["cannot delete entry"]
        }
    end
end

  private
  
  def find_daily_entries
    @dailyentry = DailyEntry.find(params[:id])
  end
  # def daily_entry_params
  #   params.require(:dailyentry).permit(:rating, :content, :user_id, :prompt_id)
  # end

end
