class GardensController < ApplicationController
  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    @garden.save
    redirect_to packagechoice_path(@garden)
  end

  def index
    @mygardens = Garden.all.where(user: current_user)
  end

  def show
    @garden = Garden.find(params[:id])
    @garden_steps = @garden.garden_steps.includes(:step)
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    # No need for app/views/gardens/destroy.html.erb
    redirect_to gardens_path, status: :see_other
  end


  def packagechoice
    @garden = Garden.find(params[:id])
    @packages = Package.where(size: @garden.size)
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :size, :exposition, :address)
  end
end
