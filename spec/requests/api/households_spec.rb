require 'rails_helper'

RSpec.describe "Households", type: :request do
  let(:request_headers){
    {
      "Accept" => "application/json",
      "Content-Type" => "application/json"
    }
  }

  describe "GET /households" do
    it "sends a list of houses" do
      FactoryGirl.create_list(:house, 10)

      get api_households_path

      expect(response).to be_successful
      expect(jsono.items.length).to eq 10
      expect(json).to match_response_schema('households/index')
    end

    it "retrieve a specific household" do
      house = FactoryGirl.create(:house)
      get api_household_path(house.to_param)

      expect(response).to be_successful
      expect(json).to match_response_schema('households/show')
    end
  end

end
