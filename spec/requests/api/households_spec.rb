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

  describe "POST /households" do
    let (:household_params) {
      {
        address:     "123 Main St.",
        address2:    "Apt 2",
        city:        "Sacramento",
        state:       "CA",
        postal_code: "91234",
        people_attributes: [
          {
            first_name: "John",
            last_name:  "Doe",
            emial:      "j.doe@email.com",
            age:        42,
            gender:     "Other"
          }
        ],
        cars_attributes: [
          {
            year:          1942,
            make_id:       "maker",
            make_display:  "Maker",
            model:         "McQueen",
            license_plate: "CAR123",
            driver_index:  0
          }
        ]
      }
    }
    before do
      post api_households_path,
        { household: household_params}.to_json,
        request_headers
    end

    it "matches response json schema" do
      expect(response).to be_successful
      expect(json).to match_response_schema('households/show')
    end

    it "creates a house, person and a car " do
      created = House.find(jsono.id)
      expect(created.cars.size).to eq 1
      expect(created.people.size).to eq 1
    end
  end
end
