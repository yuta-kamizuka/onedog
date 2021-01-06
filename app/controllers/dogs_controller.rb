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
      @dog.valid?
      @dog.save
      redirect_to root_path
    else
      @dog.images.new
      render :new
    end
  end

  private
  def dog_params
    params.require(:dog).permit(
      :name,
      :introduction,
      :dog_breed_id,
      :age_id,
      :sex_id,
      :condition_id,
      images_attributes: [:src]
    )
  end
end
