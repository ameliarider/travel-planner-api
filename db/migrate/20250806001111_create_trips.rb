class CreateTrips < ActiveRecord::Migration[8.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :image_url
      t.float :total_budget
      t.float :est_remaining_budget

      t.timestamps
    end
  end
end
