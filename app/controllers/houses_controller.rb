class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update]
  
  def index
    @houses = Houses.all
  end

  def show
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
      if @house.save
        redirect_to @house
      else
        redirect_to new_house_path, alert: "Your house must have a name"
      end
  end

  private

  def set_house
      @house = House.find_by(id: params[:id])
  end

  def house_params
      params.require(:house).permit(:name)
  end
end