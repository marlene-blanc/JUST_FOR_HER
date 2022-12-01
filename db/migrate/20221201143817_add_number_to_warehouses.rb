class AddNumberToWarehouses < ActiveRecord::Migration[7.0]
  def change
    add_column :warehouses, :number, :string
  end
end
