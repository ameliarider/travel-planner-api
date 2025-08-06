class CreateRestaurants < ActiveRecord::Migration[8.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :meal_type
      t.date :date
      t.float :est_cost
      t.integer :trip_id

      t.timestamps
    end
  end
end
