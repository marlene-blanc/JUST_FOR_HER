class AddColumnToWarehouses < ActiveRecord::Migration[7.0]
  def change
    add_column :warehouses, :city, :string
  end
end
