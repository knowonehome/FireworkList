require "spec_helper"

describe FireworkYearsController do
  describe "routing" do

    it "routes to #index" do
      get("/firework_years").should route_to("firework_years#index")
    end

    it "routes to #new" do
      get("/firework_years/new").should route_to("firework_years#new")
    end

    it "routes to #show" do
      get("/firework_years/1").should route_to("firework_years#show", :id => "1")
    end

    it "routes to #edit" do
      get("/firework_years/1/edit").should route_to("firework_years#edit", :id => "1")
    end

    it "routes to #create" do
      post("/firework_years").should route_to("firework_years#create")
    end

    it "routes to #update" do
      put("/firework_years/1").should route_to("firework_years#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/firework_years/1").should route_to("firework_years#destroy", :id => "1")
    end

  end
end
