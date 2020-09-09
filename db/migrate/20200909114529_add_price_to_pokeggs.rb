class AddPriceToPokeggs < ActiveRecord::Migration[6.0]
  def change
    add_monetize :pokeggs, :price, currency: { present: false }
  end
end
