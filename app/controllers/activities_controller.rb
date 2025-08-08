class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all

    render json: @activities
  end

  def show
    @activity = Activity.find_by(id: params["id"])

    render json: @activity
  end

  def create
    puts "--------"
    pp params
    puts "--------"
    @activity = Activity.create!(
      name: params["name"],
      date: params["date"],
      link: params["link"],
      est_cost: params["est_cost"],
      trip_id: params["trip_id"]
    )

    render json: @activity
  end

  def update
    @activity = Activity.find_by(id: params["id"])

    @activity.update(
      name: params["name"] || @activity.name,
      date: params["date"] || @activity.date,
      link: params["link"] || @activity.link,
      est_cost: params["est_cost"] || @activity.est_cost,
      trip_id: params["trip_id"] || @activity.trip_id
    )

    render json: @activity
  end

  def destroy
    @activity = Activity.find_by(id: params["id"])

    @activity.destroy

    render json: { message: "Activity destroyed successfully" }
  end
end
