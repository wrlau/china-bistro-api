class Api::V1::DishesController < ApplicationController
  def index
    render json: Dish.all 
  end
end
