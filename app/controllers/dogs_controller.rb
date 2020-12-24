class DogsController < ApplicationController
  def index
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if
      @dog.save
      redirect_to root_path
    else
    end
  end

  private
  def dog_params
    params.require(:dog).permit(
      :name,
      :introduction,
      :dog_breed,
      :age,
      :sex,
      :condition
    )
  end
end
