class ProfilesController < ApplicationController
  def index
    @users = User.all 

    @members = if params[:search]
      User.where('name LIKE ?', "%#{params[:search]}%")
    else
      User.all
    end
      
  end

  def search
 
  end



  def show 
    @user = User.find(params[:id])
  end 




end
