class AddTotalPriceToPurchases < ActiveRecord::Migration[6.0]
  def change
    add_monetize :purchases, :total_price, currency: { present: false }
  end
end
