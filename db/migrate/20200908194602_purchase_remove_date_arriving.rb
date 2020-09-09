class PurchaseRemoveDateArriving < ActiveRecord::Migration[6.0]
  def change
    remove_column :purchases, :date_arriving
  end
end
