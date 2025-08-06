class CreateLocations < ActiveRecord::Migration[8.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :trip_id

      t.timestamps
    end
  end
end
