class ProductsController < ApplicationController

  def index
    render json: Product.all.to_a.map { |e| e.attributes }
  end

  def seed
    response = []

    count = params[:id].to_i unless params[:id].nil?

    if params[:destroy] == 'true'
    Product.destroy_all
    render json: {destroyed: true}
    return true
    end

    count.times do
      item = Product.create(sku: create_sku, price: rand(1.0...100.0).round(2), name: Faker::Book.title)
      response << item
      item.save!
    end

    render json: response.to_json
  end

  def show
    render json: Product.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def create
  end

  private
  def create_sku
    SecureRandom.uuid[0..2].upcase + "-" + SecureRandom.uuid[0..3].upcase
  end
end
