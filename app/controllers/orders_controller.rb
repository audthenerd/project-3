class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end


  def show

  end

  def edit

  end

  def create

  end

  def new

  end

  def update


  end

  def destroy

  end


  private

  def order_params
    params.require(:order).permit(:restaurant_id, :customer_id)
  end

end
