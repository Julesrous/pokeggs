class AddAvailableToPokeggs < ActiveRecord::Migration[6.0]
  def change
    add_column :pokeggs, :available, :boolean
  end
end
