require 'rails_helper'

RSpec.describe "Carts", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/cart/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /add_to_cart" do
    it "returns http success" do
      get "/cart/add_to_cart"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /remove_from_cart" do
    it "returns http success" do
      get "/cart/remove_from_cart"
      expect(response).to have_http_status(:success)
    end
  end

end
