class PurchaseRemoveTransportTime < ActiveRecord::Migration[6.0]
  def change
    remove_column :purchases, :transport_time
  end
end
