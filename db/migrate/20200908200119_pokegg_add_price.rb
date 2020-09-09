class PokeggAddPrice < ActiveRecord::Migration[6.0]
  def change
    add_column :pokeggs, :price, :integer
  end
end
