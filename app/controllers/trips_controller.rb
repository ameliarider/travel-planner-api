class TripsController < ApplicationController
  def index
    @trips = Trip.all

    render json: @trips
  end

  def show
    @trip = Trip.find_by(id: params["id"])

    render json: @trip
  end

  def create
    @trip = Trip.create(
      name: params["name"],
      start_date: params["start_date"],
      end_date: params["end_date"],
      image_url: params["image_url"],
      total_budget: params["total_budget"],
      est_remaining_budget: params["est_remaining_budget"],
      user_id: params["user_id"]
    )

    render json: @trip
  end

  def update
    @trip = Trip.find_by(id: params["id"])

    @trip.update(
      name: params["name"] || @trip.name,
      start_date: params["start_date"] || @trip.start_date,
      end_date: params["end_date"] || @trip.end_date,
      image_url: params["image_url"] || @trip.image_url,
      total_budget: params["total_budget"] || @trip.total_budget,
      est_remaining_budget: params["est_remaining_budget"] || @trip.est_remaining_budget
    )

    render json: @trip
  end

  def destroy
    @trip = Trip.find_by(id: params["id"])

    @trip.destroy

    render json: { message: "Trip destroyed successfully" }
  end
end
