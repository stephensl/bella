require 'rails_helper'

RSpec.describe "Colleges", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/colleges/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/colleges/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/colleges/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/colleges/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
