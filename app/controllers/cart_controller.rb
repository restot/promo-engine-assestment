class CartController < ApplicationController
  def index
    response = []
    price = 0
    data = Cart.all.to_a.map! do |e|
      price += e.product.price
      e.attributes.merge!(product: e.product.attributes)
    end
    info = {
      message: "Cart content",
      price: price,
      price_after_discount: 0,
      promotions_applied: nil
    }
    response << info
    response << data
    render json: response
  end

  def add_to_cart
    items = params[:sku].split(',')
    items.each do |item|
      item = Cart.create!(product_id: Product.find_by(sku: item.strip).id)
    end
    response = []
    info = {message: "Cart successfully updated!"}
    data = Cart.all.to_a.map! { |e| e.attributes.merge!(product: e.product.attributes) }
    response << info
    response << data
    render json: response
  end

  def remove_from_cart
    items = params[:id].split(',')
    items.each do |item|
      item.strip!
      Cart.destroy(item) unless Cart.find_by(id: item.to_i).nil?
    end
    response = []
    info = {message: "Cart successfully updated!"}
    data = Cart.all.to_a.map! { |e| e.attributes.merge!(product: e.product.attributes) }
    response << info
    response << data
    render json: response
  end
end
