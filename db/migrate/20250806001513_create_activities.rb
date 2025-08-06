class CreateActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.date :date
      t.string :link
      t.float :est_cost
      t.integer :trip_id

      t.timestamps
    end
  end
end
