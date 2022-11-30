class CreateDonatedProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :donated_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :donation, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
