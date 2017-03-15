require "rails_helper"

RSpec.describe Api::HouseholdsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/api/households").to route_to("api/households#index", format: 'json')
    end

    it "routes to #show" do
      expect(:get => "/api/households/1").to route_to("api/households#show", :id => "1", format: 'json')
    end

    it "routes to #create" do
      expect(:post => "/api/households").to route_to("api/households#create", format: 'json')
    end

    it "routes to #update via PUT" do
      expect(:put => "/api/households/1").to route_to("api/households#update", :id => "1", format: 'json')
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/api/households/1").to route_to("api/households#update", :id => "1", format: 'json')
    end

    it "routes to #destroy" do
      expect(:delete => "/api/households/1").to route_to("api/households#destroy", :id => "1", format: 'json')
    end
  end
end
