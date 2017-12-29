class RidesController < ApplicationController
  def new
    @bikeList=Bike.all
  end

  def create
    @ride = Ride.new (ride_params)
    @ride.save

    redirect_to @ride
  end

  def show

  end

  private
  def ride_params
    params.require(:Ride).permit(:BikeID, :RideDate, :TimeInMinutes, :TimeInHours, :DistanceInMiles, :DistanceInKm, :Ascent)
  end
end
