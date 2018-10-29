class RestaurantsController < ApplicationController
  def index
    # if user is a userrest then show his restaurant
    # else
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    # if im a userrest then i can add
    @restaurant = Restaurant.new
  end

  def create
    # render plain: params[:restaurant].inspect
    @restaurant = Restaurant.new(restro_params) 
    if @restaurant.image_url
      uploaded_file = params[:restaurant][:image_url].path
      cloudnary_file = Cloudinary::Uploader.upload(uploaded_file)
      @restaurant.image_url = cloudnary_file['public_id']
    # else
    #   @restaurant.photo_url = $result.data.image_url
    end

    if @restaurant.save
      redirect_to @restaurant
    else
      
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
    params.require(:restaurant).permit(:name, :category, :location, :lat, :long, :image_url, :image2_url, :image3_url)
end
