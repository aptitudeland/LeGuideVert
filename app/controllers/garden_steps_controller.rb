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

  def create
    garden = Garden.find(params[:garden_id])
    package = Package.find(params[:package_id])
    steps = Step.where(package: package)
      steps.each do |step|
        # ATTENTION - Il faut enlever le statut: "A faire" avant d'envoyer la pull request !
        GardenStep.create!(garden: garden, step: step, status: "A faire")
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

# def update_status
#   @reservation = Reservation.find(params[:id])
#   if @reservation.update(status: params[:reservation][:status])
#     flash[:notice] = "Le statut de la réservation a bien été mis à jour à : #{params[:reservation][:status]} ."
#   else
#     flash[:alert] = 'Une erreur est survenue lors de la mise à jour du statut.'
#   end
#   redirect_back(fallback_location: @reservation.legend)
# end
