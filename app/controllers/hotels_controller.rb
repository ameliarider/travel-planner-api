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
    @hotel = Hotel.create!(
      name: params["name"],
      address: params["address"],
      start_date: params["start_date"],
      end_date: params["end_date"],
      confirmation_number: params["confirmation_number"],
      link: params["link"],
      est_cost: params["est_cost"],
      trip_id: params["trip_id"]
    )

    render json: @hotel
  end

  def update
    @hotel = Hotel.find_by(id: params["id"])

    @hotel.update(
      name: params["name"] || @hotel.name,
      address: params["address"] || @hotel.address,
      start_date: params["start_date"] || @hotel.start_date,
      end_date: params["end_date"] || @hotel.end_date,
      confirmation_number: params["confirmation_number"] || @hotel.confirmation_number,
      link: params["link"] || @hotel.link,
      est_cost: params["est_cost"] || @hotel.est_cost,
      trip_id: params["trip_id"] || @hotel.trip_id
    )

    render json: @hotel
  end

  def destroy
    @hotel = Hotel.find_by(id: params["id"])

    @hotel.destroy

    render json: { message: "Hotel destroyed successfully" }
  end
end
