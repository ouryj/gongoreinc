class FindsController < ApplicationController
  def index
    @members = if params[:search]
      User.where('name LIKE ?', "%#{params[:search]}%")
    
       
      else
       User.all data:{notice:'no match fro'}

      end
  end


end
