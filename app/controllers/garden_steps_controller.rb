class GardenStepsController < ApplicationController
  def show
    @garden_step = GardenStep.find(params[:id])
    @step = @garden_step.step
    @tasks = @step.tasks
  end
end
