class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.integer :price_pokegg
      t.string :transport_type
      t.integer :transport_time
      t.date :date_arriving
      t.integer :transport_price
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.references :pokegg, null: false, foreign_key: true

      t.timestamps
    end
  end
end
