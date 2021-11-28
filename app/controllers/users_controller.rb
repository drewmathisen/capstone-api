class UsersController < ApplicationController

  def index
    u = User.all
    render json: u
  end

  def create
    u = User.new(
      username: params[:username],
      email: params[:email],
      password: params[:password]
    )
    u.save
    render json: u
  end

end
