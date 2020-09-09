class AddPokeggsFromOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :pokegg, index: true, foreign_key: true
  end
end
