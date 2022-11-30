class CreateDonations < ActiveRecord::Migration[7.0]
  def change
    create_table :donations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :warehouse, null: true, foreign_key: true
      t.integer :amount
      t.boolean :confirm, default: false

      t.timestamps
    end
  end
end
