require "rails_helper"

RSpec.describe SearchVehiclesController, type: :controller do
  describe "Get /vehicle/search" do
    context "When query params exists" do
      it "Should render search results" do
        get :search_price, params: { min: 9000, max: 10000}
        expect(response).to render_template("search_price")
      end

      it "Should get data from API" do
        get :search_price, params: { min: 9000, max: 10000}
        expect(assigns(:search_vehicles)).not_to eq nil
      end
    end

    context "When query params NOT exists" do
      it "Should display an error message" do
        get :search_price, params: { min: 9000, max: nil }
        expect(response).to have_http_status(400)
      end

      it "Should display an error message" do
        get :search_price, params: { min: nil, max: 10000 }
        expect(response).to have_http_status(400)
      end
    end
  end
end
