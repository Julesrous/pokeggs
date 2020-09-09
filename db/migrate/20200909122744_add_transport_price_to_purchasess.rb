class AddTransportPriceToPurchasess < ActiveRecord::Migration[6.0]
  def change
    add_monetize :purchases, :transport_price, currency: { present: false }
  end
end
