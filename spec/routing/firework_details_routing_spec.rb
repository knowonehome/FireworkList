require "rails_helper"

RSpec.describe FireworkDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/firework_details").to route_to("firework_details#index")
    end

    it "routes to #new" do
      expect(:get => "/firework_details/new").to route_to("firework_details#new")
    end

    it "routes to #show" do
      expect(:get => "/firework_details/1").to route_to("firework_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/firework_details/1/edit").to route_to("firework_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/firework_details").to route_to("firework_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/firework_details/1").to route_to("firework_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/firework_details/1").to route_to("firework_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/firework_details/1").to route_to("firework_details#destroy", :id => "1")
    end

  end
end
