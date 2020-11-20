class ActivitiesController < ApplicationController

  def index
    render json: Activity.all.to_json()
  end

  def show
    @activity = Activity.find(params[:id])
    render json: @activity
  end

  def create
    @activity = Activity.create(
      name: params[:name]
    )
    render json: @activity
  end

end
