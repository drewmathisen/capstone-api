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

    if u.save
      render json: u
    else
      render json: u.errors.full_messages
    end
  end

end
