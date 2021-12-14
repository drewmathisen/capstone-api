class SpaceLogsController < ApplicationController

  def index 
    sl = SpaceLog.all
    render json: sl
  end

  def create
    sl = SpaceLog.new(
      entry_id: params[:entries],
      observed_body_id: params[:observed_body_id]
    )

    if ob.save
      render json: ob 
    end
  end


end
