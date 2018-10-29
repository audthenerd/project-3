class CustomersController < ApplicationController

  def index
    @customers = Customer.all
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

  def customer_params
    params.require(:customer).permit(:name, :preferences)
  end








end