class UserController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end
  
  def new
    
  end
  
  def create
    @user = User.new(name: params[:name], email: params[:email])
    @user.save
    redirect_to("/user/index")
  end
  
  
end
