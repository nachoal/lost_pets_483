class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)

    if @pet.save!
      # Links work in 3 ways:
      # 1. pet_path(pet.id)
      # 2. pet_path(pet)
      # 3. pet
      redirect_to @pet
    else
      render :new
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])

    if @pet.update!(pet_params)
      redirect_to @pet
    else
      render :edit
    end
  end

  def destroy
    @pet = Pet.find(params[:id])

    @pet.destroy

    redirect_to root_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :address, :date_found)
  end
end
