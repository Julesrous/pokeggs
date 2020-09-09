class PurchasesRemoveTransportPrice < ActiveRecord::Migration[6.0]
  def change
    remove_column :purchases, :transport_price
  end
end
