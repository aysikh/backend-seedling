class GoalsController < ApplicationController

  def index
    render json: Goal.all.to_json()
  end

end
