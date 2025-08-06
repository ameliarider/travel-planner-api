class RenameTravelsTableToTransportation < ActiveRecord::Migration[8.0]
  def change
    rename_table :travels, :transportations
  end
end
