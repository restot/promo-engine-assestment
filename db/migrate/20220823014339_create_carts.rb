class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.references :product_id, index:true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
