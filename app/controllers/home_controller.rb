class HomeController < ApplicationController
  def index
  end

  def about
    @about_me='my name is hafizul islam'
    @friends = Friend.includes(:user)
    users = User.includes(:friends).where(:email=>'Hafizul')

    #render json:@friends, include:[:user]
   # render json:users,include:[:friends]
    render json:users
  end
end
