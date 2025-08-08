class AddTripUserIdToUsersTable < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :trip_user_id, :integer
  end
end
