class ProfilesController < ApplicationController
  def index
    @users = User.all 
      
  end

  def search
 
  end



  def show 
    @user = User.find(params[:id])
  end 




end
