class BikesController < ApplicationController
  def new

  end
  def create
    @bike =  Bike.new(bike_params)

    @bike.save
    redirect_to @bike
  end

  def show

  end

  private
  def bike_params
    params.require(:bike).permit(:BikeName)
  end
end
