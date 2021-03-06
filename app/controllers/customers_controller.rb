class CustomersController < ApplicationController

  def index
    @customer = Customer.all
    if params[:restaurant]
      @restaurant = Restaurant.where('restaurant LIKE ?', "%#{params[:restaurant]}%")
    else
      @restaurant = Restaurant.all
    end

  end


  def show
    @customer = Customer.find(params[:id])

  end

  def edit

  end

  def create

    @customer = Customer.new(customer_params)
    @customer.save

    redirect_to customers_path

  end

  def new

  end

  def update


  end

  def destroy

  end


  private

  def customer_params
    params.require(:customer).permit(:name, :preference)
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :category)
  end


end