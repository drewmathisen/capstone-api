class UsersController < ApplicationController

  def index
    u = User.all
    render json: u
  end

  def create
    u = User.new(
      username: "harrow",
      email: "harrow@ninth.com",
      password: "password"
    )
    u.save
    render json: u
  end

end
