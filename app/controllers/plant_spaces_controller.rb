class PlantSpacesController < ApplicationController
  before_action :set_house, only: [:index, :new, :create]
  before_action :set_plant_space, only: [:show, :edit, :update]

  def index
    @plant_spaces = PlantSpace.all
  end

  def show
  end

  def new
    @plant_space = PlantSpace.new
  end

  def create
    @plant_space = PlantSpace.new(plant_space_params)
    @plant_space.house_id = @house.id
    if @plant_space.save
      redirect_to houses_path
    else
      flash[:alert] = "Couldn't save that space"
      render :new
    end
  end

  private

  def set_plant_space
    @plant_space = PlantSpace.find_by(id: params[:id])  
  end

  def set_house
    @house = House.find_by(params[:id])
  end

  def plant_space_params
    params.require(:plant_space).permit(:name, :sunlight_rating, :temp, :humidity, :house_id)
  end
end