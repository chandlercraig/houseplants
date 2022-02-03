class PlantsController < ApplicationController
  # before_action :set_plant_space, only: [:index, :create]
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  def index
    @plants = Plant.all
  end

  def show
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    if @plant.save
      redirect_to plant_path(@plant)
    else
      flash[:alert] = "Couldn't save that plant"
      render :new
    end
  end

  private

  def set_plant
    @plant = Plant.find(params[:id]) 
  end

  def set_plant_space
    @plant_space = PlantSpace.find(params[:id]) 
  end

  def plant_params
    params.permit(:name, :sunlight_req, :temp_req, :humidity_req)
  end
end