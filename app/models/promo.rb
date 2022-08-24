class Promo < ApplicationRecord
  has_many :product_id

  def fixed_price_for_set(product, current_cart) # TODO: finished to working condition
    current_cart_product_count = current_cart.select { |e| e.id == product.id }.count
    promo = Promo.find_by(product_id: product.id, promo_type: "fixed_price_for_set")
    if promo.nil?
      nil # return nil if no promos has been found for product
    elsif current_cart_product_count >= promo.promo_trigger
      promo.promo_price # return price for set of items if conditions are met
    else
      false # return false if product eligible for promotion but conditions haven't been met
    end
  end

  def fixed_price_for_match(product, current_cart) # TODO: finished to working condition
    promo = Promo.find_by(product_id: product.id, promo_type: "fixed_price_for_match")
    current_cart_product_match = current_cart.detect { |e| e.id == Product.find(promo.promo_trigger) }.count
    if promo.nil?
      nil #return nil if no promos has been found for product
    elsif current_cart_product_match.empty?
      false # return false if product eligible for promotion but conditions haven't been met
    elsif current_cart.include? current_cart_product_match
      promo.promo_price  # return price for set of items if conditions are met
    end
  end

end
