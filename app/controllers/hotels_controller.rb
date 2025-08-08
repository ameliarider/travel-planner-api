class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all

    render json: @hotels
  end

  def show
    @hotel = Hotel.find_by(id: params["id"])

    render json: @hotel
  end

  def create
    coords = fetch_coordinates(params[:name])

    @hotel = Hotel.create!(
      name: params["name"],
      address: params["address"],
      start_date: params["start_date"],
      end_date: params["end_date"],
      confirmation_number: params["confirmation_number"],
      link: params["link"],
      est_cost: params["est_cost"],
      trip_id: params["trip_id"],
      coordinates: coords
    )

    render json: @hotel
  end

  def update
    @hotel = Hotel.find_by(id: params["id"])
    coords = fetch_coordinates(params[:name] || @hotel.name)

    @hotel.update(
      name: params["name"] || @hotel.name,
      address: params["address"] || @hotel.address,
      start_date: params["start_date"] || @hotel.start_date,
      end_date: params["end_date"] || @hotel.end_date,
      confirmation_number: params["confirmation_number"] || @hotel.confirmation_number,
      link: params["link"] || @hotel.link,
      est_cost: params["est_cost"] || @hotel.est_cost,
      trip_id: params["trip_id"] || @hotel.trip_id,
      coordinates: coords
    )

    render json: @hotel
  end

  def destroy
    @hotel = Hotel.find_by(id: params["id"])

    @hotel.destroy

    render json: { message: "Hotel destroyed successfully" }
  end

  private
  def fetch_coordinates(name)
    nil if name.blank?
    results = Geocoder.search(name)
    if results.present?
      [ results.first.latitude.to_f, results.first.longitude.to_f ]
    else
      nil
    end
  end
end
