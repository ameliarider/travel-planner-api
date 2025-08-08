class AddCoordinatesToLocations < ActiveRecord::Migration[8.0]
  def change
    add_column :locations, :coordinates, :string
  end
end
