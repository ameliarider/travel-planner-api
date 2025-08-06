class RenameColumnTypeInTransportationsTable < ActiveRecord::Migration[8.0]
  def change
    rename_column :transportations, :type, :transport_type
  end
end
