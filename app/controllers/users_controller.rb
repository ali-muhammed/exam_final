class UsersController < ApplicationController
  def index
    @users = User.all
  #     if user_signed_in?
  # 	redirect_to users_path 
  # else
  #   redirect_to places_path
  # end
  end
  def show
  	@users = User.find(params[:id])
  end
end
