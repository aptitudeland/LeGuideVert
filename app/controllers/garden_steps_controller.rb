class GardenStepsController < ApplicationController
  before_action :set_garden_step, only: [:show, :update]

  def show
    @step = @garden_step.step
    @tasks = @step.tasks
    @garden = @garden_step.garden
  end

  def update
    set_garden_step
    @garden_step.update(status: garden_step_params[:status].to_i)
    redirect_to garden_path(@garden_step.garden)
  end

  def create
    garden = Garden.find(params[:garden_id])
    package = Package.find(params[:package_id])
    steps = Step.where(package: package)
      steps.each do |step|
        GardenStep.create!(garden: garden, step: step)
      end
    redirect_to garden_path(garden)
  end

  private

  def set_garden_step
    @garden_step = GardenStep.find(params[:id])
  end

  def garden_step_params
    params.require(:garden_step).permit(:status)
  end
end
