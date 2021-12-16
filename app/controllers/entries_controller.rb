class EntriesController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]

  def index 
    e = current_user.entries.reverse
    render json: e
  end

  def home_index
    e = Entry.all.reverse
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
      params[:observed_bodies].each do |body|
        s = SpaceLog.new(
          entry_id: e.id,
          observed_body_id: body[:id]
        )
        s.save!
      end
      render json: e
    else
      render json: e.errors.full_messages
    end
  end

  def show
    e = Entry.find_by(id: params[:id])
    render json: e
  end

  def update
    e = Entry.find_by(id: params[:id])
    e.title = params[:title] || e.title
    e.notes = params[:notes] || e.notes
    e.telescope_type = params[:telescope_type] || e.telescope_type
    e.start_time = params[:start_time] || e.start_time
    e.end_time = params[:end_time] || e.end_time
    e.location = params[:location] || e.location
    e.declination = params[:declination] || e.declination
    e.right_ascention = params[:right_ascention] || e.right_ascention
    e.magnification = params[:magnification] || e.magnification
    e.seeing_conditions = params[:seeing_conditions] || e.seeing_conditions
    e.filters = params[:filters] || e.filters
    e.date = params[:date] || e.date
    e.observed_bodies = params[:observed_bodies] || e.observed_bodies
    
    if e.save
      render json: e
    else 
      render json: e.errors.full_messages
    end
  end

  def destroy
    e = Entry.find_by(id: params[:id])
    e.destroy
    render json: { message: "Entry Removed!" }
  end
  
end
