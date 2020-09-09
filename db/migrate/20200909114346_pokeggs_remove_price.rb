class PokeggsRemovePrice < ActiveRecord::Migration[6.0]
  def change
    remove_column :pokeggs, :price
  end
end
