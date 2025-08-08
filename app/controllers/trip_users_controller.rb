class TripUsersController < ApplicationController
  def index
    @trip_users = TripUser.all

    render json: @trip_users
  end

  def create
    user = User.find_by(email: params[:email])

    unless user
      return render json: { error: "User not found" }, status: :not_found
    end

    trip_user = TripUser.new(user_id: user.id, trip_id: params[:trip_id])

    if trip_user.save
      render json: trip_user, status: :created
    else
      render json: { error: trip_user.errors.full_messages.to_sentence }, status: :unprocessable_entity
    end
  end
end
