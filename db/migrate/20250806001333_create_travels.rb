class CreateTravels < ActiveRecord::Migration[8.0]
  def change
    create_table :travels do |t|
      t.string :name
      t.string :type
      t.date :date
      t.string :confirmation_number
      t.string :link
      t.float :est_cost
      t.integer :trip_id

      t.timestamps
    end
  end
end
