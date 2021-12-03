class EntriesController < ApplicationController
  before_action :authenticate_user

  def index 
    e = current_user.entries 
    render json: e
  end

  def create
    e = Entry.new(
      user_id: current_user.id,
      title: params[:title],
      notes: params[:notes],
      telescope_type: params[:telescope_type],
      start_time: params[:start_time],
      end_time: params[:end_time],
      location: params[:location],
      declination: params[:declination],
      right_ascention: params[:right_ascention],
      magnification: params[:magnification],
      seeing_conditions: params[:seeing_conditions],
      filters: params[:filters],
      date: params[:date]
    )

    if e.save
      render json: e
    else
      render json: e.errors.full_messages
    end

  end

end
