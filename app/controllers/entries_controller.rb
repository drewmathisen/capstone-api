class EntriesController < ApplicationController

  def index 
    e = Entry.all 
    render json: e
  end

  def create
    e = Entry.new(
      user_id: 2,
      title: "Today I saw a shiny star",
      notes: "Today at night I saw a shiny star. It was really cool but I wouldn't expect you to understand",
      telescope_type: "N/A",
      start_time: "1:30 AM",
      end_time: "2:00 AM",
      location: "Castle Drearburh",
      declination: "7° 24′ 26″",
      right_ascention: "5h 55m 10s",
      magnification: "N/A",
      seeing_conditions: "Fine I guess",
      filters: "My cool sunglasses",
      date: "12/02/21",
    )

    e.save
    render json: e
  end

end
