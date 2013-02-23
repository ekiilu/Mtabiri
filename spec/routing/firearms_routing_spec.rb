require "spec_helper"

describe FirearmsController do
  describe "routing" do

    it "routes to #index" do
      get("/firearms").should route_to("firearms#index")
    end

    it "routes to #new" do
      get("/firearms/new").should route_to("firearms#new")
    end

    it "routes to #show" do
      get("/firearms/1").should route_to("firearms#show", :id => "1")
    end

    it "routes to #edit" do
      get("/firearms/1/edit").should route_to("firearms#edit", :id => "1")
    end

    it "routes to #create" do
      post("/firearms").should route_to("firearms#create")
    end

    it "routes to #update" do
      put("/firearms/1").should route_to("firearms#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/firearms/1").should route_to("firearms#destroy", :id => "1")
    end

  end
end
