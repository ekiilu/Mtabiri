require "spec_helper"

describe CattletheftsController do
  describe "routing" do

    it "routes to #index" do
      get("/cattlethefts").should route_to("cattlethefts#index")
    end

    it "routes to #new" do
      get("/cattlethefts/new").should route_to("cattlethefts#new")
    end

    it "routes to #show" do
      get("/cattlethefts/1").should route_to("cattlethefts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cattlethefts/1/edit").should route_to("cattlethefts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cattlethefts").should route_to("cattlethefts#create")
    end

    it "routes to #update" do
      put("/cattlethefts/1").should route_to("cattlethefts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cattlethefts/1").should route_to("cattlethefts#destroy", :id => "1")
    end

  end
end
