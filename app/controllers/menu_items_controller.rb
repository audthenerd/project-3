class MenuItemsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def edit
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
