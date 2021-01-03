class DogsController < ApplicationController
  def index
    @dogs = Dog.includes(:image).order('created_at DESC')
  end

  def new
    @dog = Dog.new
    @dog.images.new
  end

  def create
    @dog = Dog.new(dog_params)
    if
      @dog.save
      redirect_to root_path
    else
      render :new
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
      :condition,
      images_attributes: [:src]
    )
  end
end
