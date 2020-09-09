class RemovePurchaseFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_reference :orders, :purchase, null: false, foreign_key: true
  end
end
