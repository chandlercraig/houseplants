class PlantSpacesController < ApplicationController
  before_action :set_house, only: [:index, :show, :new, :create]
  before_action :set_plant_space, only: [:show, :edit, :update, :destroy]

  def index
    @house_spaces = @house.plant_spaces
  end

  def show
    house_id = @plant_space.house_id
    @house = House.find_by(id: house_id)
  end

  def new
    @plant_space = PlantSpace.new
  end

  def create
    @plant_space = PlantSpace.new(plant_space_params)
    if @plant_space.save
      redirect_to plant_space_path(@plant_space)
    else
      flash[:alert] = "Couldn't save that space"
      render :new
    end
  end

  private

  def set_plant_space
    @plant_space = PlantSpace.find(params[:id]) 
  end

  def set_house
    # house_id = PlantSpace.find(params[:id]).house_id
    @house = House.find_by(id: params[:house_id])
  end

  def plant_space_params
    params.permit(:name, :sunlight_rating, :temp, :humidity, :house_id, :plant_id)
  end
end