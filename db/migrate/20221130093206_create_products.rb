class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :category
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
