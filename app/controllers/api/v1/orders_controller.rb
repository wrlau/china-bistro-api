class Api::V1::OrdersController < ApplicationController
  before_action :set_order, only: [:show, :update, :destroy]

  def index
    @orders = Order.all
    render json: @orders
  end

  def create
    @order = Order.create #order_params returns an unpermitted parameter error for :order
    dishes = params[:order]
    dishes.each do |dish|
      @order.dishes.create(name: dish[:name], price: dish[:price])
    end
    render json: @order
  end

  def show
    render json: @order
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    render json: @order
  end

  def destroy
    @order.destroy
  end

  private

  #def order_params
    #params.require(:order).permit(:user_id, [{:dishes => [:id, :name, :price, :description, :category]}])
  #end

  def set_order
    @order = Order.find(params[:id])
  end
end
