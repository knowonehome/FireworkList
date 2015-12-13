require 'rails_helper'

RSpec.describe "FireworkDetails", type: :request do
  describe "GET /firework_details" do
    it "works! (now write some real specs)" do
      get firework_details_path
      expect(response).to have_http_status(200)
    end
  end
end
