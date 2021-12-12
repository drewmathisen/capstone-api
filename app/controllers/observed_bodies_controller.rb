class ObservedBodiesController < ApplicationController
  def index 
    ob = ObservedBody.all
    render json: ob
  end

  def create

    a = ObservedBody.all
    n = []
    a.each do |body|
     n << body.name 
    end

    ob = ObservedBody.new(
      name: params[:name]
    )

    if n.include? ob.name 
      render json: a.find_by(name: ob.name)
    else
      ob.save
      render json: ob
    end

  end
end
