class AddOpeningHoursToWarehouses < ActiveRecord::Migration[7.0]
  def change
    add_column :warehouses, :opening_hours, :string
  end
end
