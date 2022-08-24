class Promo < ApplicationRecord
  has_many :product_id

  def fixed_price_for_set(product, count)
    promo = Promo.find_by(product_id: product.id, promo_type: "fixed_price")
    if promo.nil?
      nil # return nil if no promos has been found for product
    elsif count >= promo.promo_trigger
      promo.price # return price for set of items if conditions are met
    else
      false # return false if product eligible for promotion but conditions haven't been met
    end
  end

  def fixed_price_for_match(product, current_cart)
    promo = Promo.find_by(product_id: product.id, promo_type: "fixed_price")
  end

end
