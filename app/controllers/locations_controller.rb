class LocationsController < ApplicationController
  def index
    @locations = Location.all

    render json: @locations
  end

  def show
    @location = Location.find_by(id: params["id"])

    render json: @location
  end

  def create
    @location = Location.create!(
      name: params["name"],
      start_date: params["start_date"],
      end_date: params["end_date"],
      trip_id: params["trip_id"]
    )

    render json: @location
  end

  def update
    @location = Location.find_by(id: params["id"])

    @location.update(
      name: params["name"] || @location.name,
      start_date: params["start_date"] || @location.start_date,
      end_date: params["end_date"] || @location.end_date,
      trip_id: params["trip_id"] || @location.trip_id
    )

    render json: @location
  end

  def destroy
    @location = Location.find_by(id: params["id"])

    @location.destroy

    render json: { message: "Location destroyed successfully" }
  end
end
