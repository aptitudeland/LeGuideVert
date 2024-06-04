class GardensController < ApplicationController
  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.save
    redirect_to gardens_path(@garden)
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :size, :exposition, :address)
  end
end
