require 'rails_helper'

RSpec.describe ChargesController, type: :controller do

  describe "GET #stripeToken" do
    it "returns http success" do
      get :stripeToken
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #amount" do
    it "returns http success" do
      get :amount
      expect(response).to have_http_status(:success)
    end
  end

end
