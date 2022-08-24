class AddColumsToPromos < ActiveRecord::Migration[7.0]
  def change
    add_column :promos, :promo_trigger, :integer
    add_column :promos, :promo_price, :decimal
  end
end
