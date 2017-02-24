class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(add_params)
    @character.house = House.all.sample
    @character.save
    redirect_to characters_path(@character)
  end

  private

  def add_params
    params.require(:character).permit(:name, :img_url)
  end

end
