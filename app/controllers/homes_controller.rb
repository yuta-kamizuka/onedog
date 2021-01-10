class HomesController < ApplicationController
  def index
    @dogs = Dog.all.order(created_at: :desc)
  end
end
