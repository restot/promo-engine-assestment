class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.decimal :price
      t.string :sku
      t.string :name

      t.timestamps
    end
  end
end
