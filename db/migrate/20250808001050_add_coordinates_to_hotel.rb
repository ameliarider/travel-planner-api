class AddCoordinatesToHotel < ActiveRecord::Migration[8.0]
  def change
    add_column :hotels, :coordinates, :string
  end
end
