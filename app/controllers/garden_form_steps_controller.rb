class GardenFormStepsController < ApplicationController

  before_action :set_garden
  before_action :set_current_step

  def new
    @garden_form_step = @garden.garden_form_steps.build
  end

  def create
    @garden_form_step = @garden.garden_form_steps.build(garden_form_step_params)

    if @garden_form_step.save
      redirect_to edit_garden_garden_form_step_path(@garden, @garden_form_step.next_step)
    else
      render :new
    end
  end

  def edit
    @garden_form_step = @garden.garden_form_steps.find(params[:id])
  end

  def update
    @garden_form_step = @garden.garden_form_steps.find(params[:id])

    if @garden_form_step.update(garden_form_step_params)
      redirect_to edit_garden_garden_form_step_path(@garden, @garden_form_step.next_step)
    else
      render :edit
    end
  end

  private

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end

  def set_current_step
    @current_step = @garden.current_step || 1
  end

  def garden_form_step_params
    params.require(:garden_form_step).permit(:name, :description, :photo)
  end


end
