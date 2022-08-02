class HomeController < ApplicationController
  def index
  end

  def about
    @about_me='my name is hafizul islam'
    @friends = Friend.includes(:user).where(user: { email: 'mim@gmail.com' })
    key="Hafi"
    
    users = User.includes(:friends).where("friends.first_name LIKE ?","%#{key}%").references(:friends)
   
    render json:users, include:[:friends]
  #  render json:users,include:[:friends]


  # where quesy eager load
  #users = User.includes(:friends).where(friends:{first_name: 'Hafizul'})
  #render json:users,include:[:friends]

  # where all is ok
  #@friends = Friend.includes(:user).where(user: { email: 'mim@gmail.com' })
  #render json:@friends,include:[:user]

  # where like condition just frist model
  # key="mim@gmail"
  # users = User.where("email LIKE ?","%#{key}%")
  #render json:users

  # eager load with search query 
  # key="Hafi"
  # users = User.includes(:friends).where("friends.first_name LIKE ?","%#{key}%").references(:friends)
  # render json:users, include:[:friends]

  #use map
   #users = User.select(:id,:email).map{|c| [c.id,c.email]}
  #render json:users
  end
end
