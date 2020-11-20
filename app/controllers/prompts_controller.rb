class PromptsController < ApplicationController

  def index
    render json: Prompt.all.to_json()
  end
  
end
