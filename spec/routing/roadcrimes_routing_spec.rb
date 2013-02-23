require "spec_helper"

describe RoadcrimesController do
  describe "routing" do

    it "routes to #index" do
      get("/roadcrimes").should route_to("roadcrimes#index")
    end

    it "routes to #new" do
      get("/roadcrimes/new").should route_to("roadcrimes#new")
    end

    it "routes to #show" do
      get("/roadcrimes/1").should route_to("roadcrimes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/roadcrimes/1/edit").should route_to("roadcrimes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/roadcrimes").should route_to("roadcrimes#create")
    end

    it "routes to #update" do
      put("/roadcrimes/1").should route_to("roadcrimes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/roadcrimes/1").should route_to("roadcrimes#destroy", :id => "1")
    end

  end
end
