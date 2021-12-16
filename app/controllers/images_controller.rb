class ImagesController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def index
    i = Image.all
    render json: i
  end

  def create
    i = Image.new(
      user_id: current_user.id,
      entry_id: params[:entry_id],
      name: params[:name],
      description: params[:description],
      image_url: params[:image_url]
    )

    if i.save
      render json: i
    else
      render json: i.errors.full_messages
    end

  end

  def show
    i = Image.find_by(id: params[:id])
    render json: i
  end

  def update
    i = Image.find_by(id: params[:id])
    i.entry_id = i.entry_id
    i.name = params[:name] || i.name
    i.description = params[:description] || i.description
    i.image_url = params[:image_url] || i.image_url

    if i.save
      render json: i
    else
      render json: i.errors.full_messages
    end

  end

  def destroy
    i = Image.find_by(id: params[:id])
    i.destroy
    render json: { message: "Image Removed!" }
  end

end
