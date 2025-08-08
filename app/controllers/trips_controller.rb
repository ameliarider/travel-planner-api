class TripsController < ApplicationController
  def index
    user_id = params[:id]
    @trips = Trip.joins(:trip_users).where(trip_users: { user_id: user_id }).distinct

    render :index
  end

  def show
    @trip = Trip.find_by(id: params["id"])

    render :show
  end

  def create
  @trip = Trip.create(trip_params)
  TripUser.create(user_id: params[:user_id], trip_id: @trip.id)

  render :show
end

  def update
    @trip = Trip.find_by(id: params["id"])

    @trip.update(
      name: params["trip"]["name"] || @trip.name,
      start_date: params["trip"]["start_date"] || @trip.start_date,
      end_date: params["trip"]["end_date"] || @trip.end_date,
      image_url: params["trip"]["image_url"] || @trip.image_url,
      total_budget: params["trip"]["total_budget"] || @trip.total_budget,
      trip_user_id: params["trip_user"]
    )

    render :show
  end

  def destroy
    @trip = Trip.find_by(id: params["id"])

    @trip.destroy

    render json: { message: "Trip destroyed successfully" }
  end

  private
  def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date, :image_url, :total_budget)
  end
end
