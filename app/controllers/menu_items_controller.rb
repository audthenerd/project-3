require 'byebug'

class MenuItemsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menuitems = MenuItem.where(restaurant_id: params[:restaurant_id])
  end

  def create
  end

  def new
  end

  def edit
    @menuitem = MenuItem.find(params[:id])
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def menu_item_params
  params.require(:menu_item).permit(:item, :restaurant_id, :price)
end
end

