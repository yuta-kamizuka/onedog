class DogsController < ApplicationController
  def index
  end

  def new
    @dog = Dog.new
  end
end
