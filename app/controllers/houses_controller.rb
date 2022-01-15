class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update]
  
  def index
    @houses = current_user.houses.all
  end

  def show
    @house_spaces = @house.plant_spaces
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    @house.user_id = current_user.id
      if @house.save
        redirect_to houses_path
      else
        redirect_to new_house_path, alert: "Your house needs a name!" 
      end
  end

  private

  def set_house
      @house = House.find_by(id: params[:id])
  end

  def house_params
      params.require(:house).permit(:name, :user_id)
  end
end