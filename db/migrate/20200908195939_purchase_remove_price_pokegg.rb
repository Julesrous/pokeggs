class PurchaseRemovePricePokegg < ActiveRecord::Migration[6.0]
  def change
    remove_column :purchases, :poke_egg
  end
end
