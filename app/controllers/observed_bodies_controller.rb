class ObservedBodiesController < ApplicationController
  def index 
    ob = ObservedBody.all
    render json: ob
  end

  def create
    ob = ObservedBody.new(
      name: params[:name]
    )

    if ob.save
      render json: ob 
    end

  end
end
