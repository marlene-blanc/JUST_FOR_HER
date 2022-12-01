class AddCoordinatesToWarehouses < ActiveRecord::Migration[7.0]
  def change
    add_column :warehouses, :latitude, :float
    add_column :warehouses, :longitude, :float
  end
end
