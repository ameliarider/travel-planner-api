class RemoveUserIdAndAddTripUserIdToTrips < ActiveRecord::Migration[8.0]
  def change
    add_column :trips, :trip_user_id, :integer
    remove_column :trips, :user_id, :integer
  end
end
