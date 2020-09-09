class PurchaseAddEndDateArriving < ActiveRecord::Migration[6.0]
  def change
    add_column :purchases, :end_date_arriving, :date
  end
end
