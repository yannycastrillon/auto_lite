require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  before do
    @vehicle = FactoryBot.build(:vehicle)
  end

  describe "Validations" do
    context "When VIN is unique" do
      it "Should have a vin" do
        expect(@vehicle.vin).to be_truthy
      end
    end
    context "When VIN is NOT unique" do
      before { described_class.create!(vin: @vehicle.vin, model: "Honda", make: "Soul") }
      it "Should be invalid if VIN not unique" do
        expect(subject).to be_invalid
      end
    end
  end
end
