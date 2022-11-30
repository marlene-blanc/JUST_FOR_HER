class CreateWarehouses < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouses do |t|
      t.string :name
      t.string :address
      t.integer :max_quantity
      t.integer :actual_quantity

      t.timestamps
    end
  end
end
