class PurchaseAddStratDateArriving < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :start_date_arriving, :date
  end
end
