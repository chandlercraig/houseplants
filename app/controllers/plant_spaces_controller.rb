class PlantSpacesController < ApplicationController
  before_action :set_house, only: [:show, :new, :create]
  before_action :set_plant_space, only: [:show, :edit, :update, :destroy]

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
    if @plant_space.save
      redirect_to house_plant_space_path(@house, @plant_space)
    else
      flash[:alert] = "Couldn't save that space"
      render :new
    end
  end

  private

  def set_house
    @house = House.find_by(id: params[:house_id])
  end

  def set_plant_space
    @plant_space = PlantSpace.find(params[:id]) 
  end

  def plant_space_params
    params.permit(:name, :sunlight_rating, :temp, :humidity, :house_id)
  end
end