class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy, :purchase]

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
    # @dog = Dog.find(params[:id])
    @images = @dog.images
  end

  def edit
    @dog.images.build
    # @dog.images.cache! unless @dog.images.blank?
  end

  def update
    if @dog.update(dog_params)
      redirect_to dog_path
      # @dog.update(status: "里親見つかりました")
    else
      redirect_to edit__path
    end
  end

  def destroy
    @dog.destroy
  end

  def purchase
    @dog_buyer = @dog
    @dog_buyer.update( buyer_id: current_user.id)
    @dog.update(status: "里親見つかりました")
  end

  def done
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
      images_attributes: [:src, :id, :_destroy,]).merge(seller_id: current_user.id)

  end

  def set_dog
    @dog = Dog.find(params[:id])
  end
  #     使うならbefore_actionを定義する
end

