class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    redirect_to root_path unless current_user
    @house = House.new
  end

  def create
    redirect_to root_path unless current_user
    @house = House.create!(house_params.merge(user: current_user))
    redirect_to @house
  end

  def edit
    redirect_to root_path unless current_user
    redirect_to root_path unless current_user
    @house = House.find(params[:id])
  end

  def update
    redirect_to root_path unless current_user
    @house = House.find(params[:id])
    @house.update(house_params.merge(user: current_user))
    redirect_to @house
  end

  def destroy
    redirect_to root_path unless current_user
    @house = House.find(params[:id])
    @house.destroy

    redirect_to houses_url
  end

  private
  def house_params
    params.require(:house).permit(:name, :region, :seat, :seat_url, :sigil_url, :motto, :great_house, :allegiance)
  end
end
