class UsersController < ApplicationController

  def index
    u = User.all 
    render json: u
  end
  
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def user_index
    u = User.find_by(id: params[:id])
    render json: u.entries
  end
end
