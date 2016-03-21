class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = @house.create!(house_params)
    redirect_to @house
  end

  private
  def house_params
    params.require(:house).permit(:name, :region, :seat, :seat_url, :sigil_url, :motto, :great_house, :allegiance)
  end
end
