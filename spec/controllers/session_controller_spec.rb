require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  describe "GET #new,create,destroy" do
    it "returns http success" do
      get :new,create,destroy
      expect(response).to have_http_status(:success)
    end
  end

end
