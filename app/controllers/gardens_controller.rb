class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end



  # private

  # def garden_params
  #   params.require(:garden).permit(:name, :address, :size, :exposition)
  # end
end
