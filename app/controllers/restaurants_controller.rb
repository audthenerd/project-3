class RestaurantsController < ApplicationController
  def index
    # if user is a userrest then show his restaurant
    # else
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
  end

  def create
    # render plain: params[:restaurant].inspect
    @restaurant = Restaurant.new(post_params) 

    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

      @restaurant.update(restro_params)
      redirect_to @restaurant
    else
      redirect_to @restaurant
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy
    redirect_to restaurants_path
  end


  private
  def restro_params
    parmas.require(:restaurant).permit(:name, :category, :location, :lat, :long)
end
