class HomeController < ApplicationController
  def index
  end

  def about
    @about_me='my name is hafizul islam'
    @friends = Friend.all
    @users = User.all
  end
end
