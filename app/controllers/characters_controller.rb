class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    redirect_to root_path unless current_user
    @character = Character.new
    @houses = House.all
  end

  def create
    redirect_to root_path unless current_user
    @character = Character.create!(character_params.merge(user: current_user))
    redirect_to @character
  end

  def edit
    redirect_to root_path unless current_user
    @character = Character.find(params[:id])
  end

  def update
    redirect_to root_path unless current_user
    @character = Character.find(params[:id])
    @character.update(character_params.merge(user: current_user))
    redirect_to @character
  end

  def destroy
    redirect_to root_path unless current_user
    @character = Character.find(params[:id])
    @character.destroy

    redirect_to characters_url
  end

  private
  def character_params
    params.require(:character).permit(:name, :gender, :photo_url, :primary_weapon, :quote, :status, :house_id)
  end
end
