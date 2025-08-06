class TransportationsController < ApplicationController
    def index
    @transportations = Transportation.all

    render json: @transportations
  end

  def show
    @transportation = Transportation.find_by(id: params["id"])

    render json: @transportation
  end

  def create
    @transportation = Transportation.create(
      name: params["name"],
      transport_type: params["transport_type"],
      date: params["date"],
      confirmation_number: params["confirmation_number"],
      link: params["link"],
      est_cost: params["est_cost"],
      trip_id: params["trip_id"]
    )

    render json: @transportation
  end

  def update
    @transportation = Transportation.find_by(id: params["id"])

    @transportation.update(
      name: params["name"] || @transportation.name,
      transport_type: params["transport_type"] || @transportation.transport_type,
      date: params["date"] || @transportation.date,
      confirmation_number: params["confirmation_number"] || @transportation.confirmation_number,
      link: params["link"] || @transportation.link,
      est_cost: params["est_cost"] || @transportation.est_cost,
      trip_id: params["trip_id"] || @transportation.trip_id
    )

    render json: @transportation
  end

  def destroy
    @transportation = Transportation.find_by(id: params["id"])

    @transportation.destroy

    render json: { message: "Transportation destroyed successfully" }
  end
end
