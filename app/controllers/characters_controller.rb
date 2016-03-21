class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
    @houses = House.all
  end

  def create
    @character = Character.create!(character_params)
    redirect_to @character
  end

  private
  def character_params
    require(:character).permit(:name, :gender, :photo_url, :primary_weapon, :quote, :status, :house_id)
  end
end
