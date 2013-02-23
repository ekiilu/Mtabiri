require "spec_helper"

describe LocationreportsController do
  describe "routing" do

    it "routes to #index" do
      get("/locationreports").should route_to("locationreports#index")
    end

    it "routes to #new" do
      get("/locationreports/new").should route_to("locationreports#new")
    end

    it "routes to #show" do
      get("/locationreports/1").should route_to("locationreports#show", :id => "1")
    end

    it "routes to #edit" do
      get("/locationreports/1/edit").should route_to("locationreports#edit", :id => "1")
    end

    it "routes to #create" do
      post("/locationreports").should route_to("locationreports#create")
    end

    it "routes to #update" do
      put("/locationreports/1").should route_to("locationreports#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/locationreports/1").should route_to("locationreports#destroy", :id => "1")
    end

  end
end
