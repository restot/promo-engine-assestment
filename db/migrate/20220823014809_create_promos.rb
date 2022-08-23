class CreatePromos < ActiveRecord::Migration[7.0]
  def change
    create_table :promos do |t|
      t.references :product_id, null: false, foreign_key: true
      t.string :promo_type

      t.timestamps
    end
  end
end
