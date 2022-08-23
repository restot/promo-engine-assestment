require 'rails_helper'

RSpec.describe "Promos", type: :request do
  describe "GET /assing_product" do
    it "returns http success" do
      get "/promo/assing_product"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /unassing_product" do
    it "returns http success" do
      get "/promo/unassing_product"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/promo/index"
      expect(response).to have_http_status(:success)
    end
  end

end
