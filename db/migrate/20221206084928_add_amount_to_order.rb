class AddAmountToOrder < ActiveRecord::Migration[7.0]
  def change
    add_monetize :orders, :price, currency: { present: false }
  end
end
