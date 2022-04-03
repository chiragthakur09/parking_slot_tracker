require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/home/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /book_slot" do
    it "returns http success" do
      get "/home/book_slot"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show_logs" do
    it "returns http success" do
      get "/home/show_logs"
      expect(response).to have_http_status(:success)
    end
  end

end
