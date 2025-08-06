class CreateHotels < ActiveRecord::Migration[8.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.date :start_date
      t.date :end_date
      t.string :confirmation_number
      t.string :link
      t.integer :trip_id
      t.float :est_cost

      t.timestamps
    end
  end
end
