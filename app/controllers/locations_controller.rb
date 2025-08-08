require "geocoder"

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
    coords = fetch_coordinates(params[:name])

    @location = Location.create!(
      name: params["name"],
      start_date: params["start_date"],
      end_date: params["end_date"],
      trip_id: params["trip_id"],
      coordinates: coords
    )

    render json: @location
  end

  def update
    @location = Location.find_by(id: params["id"])
    coords = fetch_coordinates(params[:name] || @location.name)

    @location.update(
      name: params["name"] || @location.name,
      start_date: params["start_date"] || @location.start_date,
      end_date: params["end_date"] || @location.end_date,
      trip_id: params["trip_id"] || @location.trip_id,
      coordinates: coords
    )
    puts "------------"
    pp @location.coordinates
    puts "------------"

    render json: @location
  end

  def destroy
    @location = Location.find_by(id: params["id"])

    @location.destroy

    render json: { message: "Location destroyed successfully" }
  end

  private
  def fetch_coordinates(name)
    return nil if name.blank?
    results = Geocoder.search(name)
    if results.present?
      [ results.first.latitude.to_f, results.first.longitude.to_f ]
    else
      nil
    end
  end
end
