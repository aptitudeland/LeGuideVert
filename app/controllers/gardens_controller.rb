class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
    @garden_steps = @garden.garden_steps.includes(:step)
  end

  # private

  # def garden_params
  #   params.require(:garden).permit(:name, :address, :size, :exposition)
  # end
end
