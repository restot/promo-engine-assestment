class CartController < ApplicationController
  def index
    render json: Cart.all.to_a.map { |e| e.attributes }
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
