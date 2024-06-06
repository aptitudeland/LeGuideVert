class GardenStepsController < ApplicationController
  before_action :set_garden_step, only: [:show, :update]

  def show
    @step = @garden_step.step
    @tasks = @step.tasks
    @garden = @garden_step.garden
  end

  def update
    set_garden_step
    @garden_step.update(garden_step_params)
    redirect_to garden_path(@garden_step.garden)
  end

  private

  def set_garden_step
    @garden_step = GardenStep.find(params[:id])
  end

  def garden_step_params
    params.require(:garden_step).permit(:status)
  end
end

# def update_status
#   @reservation = Reservation.find(params[:id])
#   if @reservation.update(status: params[:reservation][:status])
#     flash[:notice] = "Le statut de la réservation a bien été mis à jour à : #{params[:reservation][:status]} ."
#   else
#     flash[:alert] = 'Une erreur est survenue lors de la mise à jour du statut.'
#   end
#   redirect_back(fallback_location: @reservation.legend)
# end
