class ReservationsController < ApplicationController
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
  def reservation_params
  params.require(:reservation).permit(:restaurant_id, :customer_id, :reservation_date, :reservation_time)
end
end
