require "rails_helper"

RSpec.describe VehiclesController, type: :controller do
  describe "Get Home" do
    it "Should render home Page" do
      get :home
      expect(response).to render_template("home")
      expect(response.body).to eq ""
    end
  end
end
