class PurchasesRemoveTotalPrice < ActiveRecord::Migration[6.0]
  def change
    remove_column :purchases, :total_price
  end
end
