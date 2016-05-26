require "spec_helper"

describe FireworkCommentsController do
  describe "routing" do

    it "routes to #index" do
      get("/firework_comments").should route_to("firework_comments#index")
    end

    it "routes to #new" do
      get("/firework_comments/new").should route_to("firework_comments#new")
    end

    it "routes to #show" do
      get("/firework_comments/1").should route_to("firework_comments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/firework_comments/1/edit").should route_to("firework_comments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/firework_comments").should route_to("firework_comments#create")
    end

    it "routes to #update" do
      put("/firework_comments/1").should route_to("firework_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/firework_comments/1").should route_to("firework_comments#destroy", :id => "1")
    end

  end
end
