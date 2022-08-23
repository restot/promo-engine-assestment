require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /seed" do
    it "returns http success" do
      get "/products/seed"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /resead" do
    it "returns http success" do
      get "/products/resead"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/products/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/products/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/products/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/products/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/products/index"
      expect(response).to have_http_status(:success)
    end
  end

end
