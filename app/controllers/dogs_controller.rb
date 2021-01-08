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

  def show
    @dog = Dog.find(params[:id])
    @images = @dog.images
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

  # def set_dog
  #   @dog = Dog.find(params[:id])
  # end
  #     使うならbefore_actionを定義する
end

