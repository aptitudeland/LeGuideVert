class GardenFormController < ApplicationController
  def step1
    @garden = Garden.new
    session[:garden_params] = {} unless session[:garden_params]
  end

  def step2
    raise
    @garden = Garden.new(session[:garden_params])
  end

  def step3
    @garden = Garden.new(session[:garden_params])
  end

  def create
    @garden = Garden.new(garden_params)
    if @garden.save
      session[:garden_params] = nil
      redirect_to @garden, notice: 'Garden was successfully created.'
    else
      render :step3
    end
  end

  private

  def garden_params
    params.require(:garden).permit(:name, :size, :user_id, garden_steps_attributes: [:id, :step_number, :description, :_destroy])
  end
end
