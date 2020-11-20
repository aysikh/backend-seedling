class MoodsController < ApplicationController

  def index
    render json: Mood.all.to_json()
  end
  
end
