require "spec_helper"

describe ConflictsController do
  describe "routing" do

    it "routes to #index" do
      get("/conflicts").should route_to("conflicts#index")
    end

    it "routes to #new" do
      get("/conflicts/new").should route_to("conflicts#new")
    end

    it "routes to #show" do
      get("/conflicts/1").should route_to("conflicts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/conflicts/1/edit").should route_to("conflicts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/conflicts").should route_to("conflicts#create")
    end

    it "routes to #update" do
      put("/conflicts/1").should route_to("conflicts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/conflicts/1").should route_to("conflicts#destroy", :id => "1")
    end

  end
end
