require 'byebug'

class MenuItemsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menuitems = MenuItem.where(restaurant_id: params[:restaurant_id])

  end

  def create
    @menuitem = MenuItem.new(menu_item_params)
    @menuitem.save

    @restaurant = Restaurant.find(params[:restaurant_id])


    redirect_to restaurant_menu_items_path(@restaurant)
  end

  def new
  end

  def edit
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menuitem = MenuItem.find(params[:id])
  end

  def show
  end

  def update
    @menuitem = MenuItem.find(params[:id])
    @menuitem.update(menu_item_params)

    @restaurant = Restaurant.find(params[:menu_item][:restaurant_id])

    redirect_to restaurant_menu_items_path(@restaurant)
  end

  def destroy
    @menuitem = MenuItem.find(params[:id])
    @menuitem.delete

    @restaurant = Restaurant.find(params[:restaurant_id])


    redirect_to restaurant_menu_items_path(@restaurant)
  end

  private
  def menu_item_params
  params.require(:menu_item).permit(:item, :restaurant_id, :price)
end
end

