class GardenFormController < ApplicationController
  before_action :garden_create, only: [:step2, :step2, :step3, :step4, :update]
    def step1
      @garden = Garden.create!(user: current_user)
    end

    def step2
      @garden.update(name: garden_params[:name])
    end

    def step3
      @garden.update(size: garden_params[:size])
    end

    def step4
      @garden.update(exposition: garden_params[:exposition])
    end

  def update
    @garden.update(address: garden_params[:address])

    case @garden.size
    when "Jardinière"
      file = File.open(Rails.root.join("app/assets/images/garden_size/size_1_jardiniere.webp"))
      @garden.photo.attach(io: file, filename: "size_1_jardiniere.webp", content_type: "image/webp")
    when "Bac potager"
      file = File.open(Rails.root.join("app/assets/images/garden_size/size_2_bac.jpeg"))
      @garden.photo.attach(io: file, filename: "size_2_bac.jpeg", content_type: "image/jpeg")
    when "Potager"
      file = File.open(Rails.root.join("app/assets/images/garden_size/size_3_potager.webp"))
      @garden.photo.attach(io: file, filename: "size_3_potager.webp", content_type: "image/webp")
    end

    if @garden
      redirect_to packagechoice_path(@garden)
    else
      render :step1, notice: "Le jardin a flêtri"
    end
  end

  private

  def garden_create
    @garden = current_user.gardens.last
  end

  def garden_params
    params.require(:garden).permit(:name, :size, :exposition, :address)
  end
end
