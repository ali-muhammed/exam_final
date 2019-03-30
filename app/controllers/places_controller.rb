class PlacesController < ApplicationController
  before_action :find_place, only: [:show, :edit, :update, :destroy] 

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)
    if @place.save
    
      redirect_to places_path
    else
      render 'new'
    end
  end 

  def index
    @places = Place.all
  end
 
  def destroy
    @place.destroy

    redirect_to places_path
  end

  def update

    if @place.update(place_params)
      redirect_to place_path
    else
      render :edit
    end
  end

  private

  def place_params
    params.require(:place).permit(:title, :categoru, :description, :agreement, :picture) 
  end 

  def find_place
    @place = Place.find(params[:id])
  end
end