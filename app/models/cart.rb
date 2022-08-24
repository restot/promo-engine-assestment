class Cart < ApplicationRecord
  belongs_to :product

  def apply_discounts(cart)
    cart
  end
end
