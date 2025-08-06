class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find_by(id: params["id"])

    render json: @restaurant
  end

  def create
    @restaurant = Restaurant.create!(
      name: params["name"],
      meal_type: params["meal_type"],
      date: params["date"],
      est_cost: params["est_cost"],
      trip_id: params["trip_id"]
    )

    render json: @restaurant
  end

  def update
    @restaurant = Restaurant.find_by(id: params["id"])

    @restaurant.update(
      name: params["name"] || @restaurant.name,
      meal_type: params["meal_type"] || @restaurant.meal_type,
      date: params["date"] || @restaurant.date,
      est_cost: params["est_cost"] || @restaurant.est_cost,
      trip_id: params["trip_id"] || @restaurant.trip_id
    )

    render json: @restaurant
  end

  def destroy
    @restaurant = Restaurant.find_by(id: params["id"])

    @restaurant.destroy

    render json: { message: "Restaurant destroyed successfully" }
  end
end
