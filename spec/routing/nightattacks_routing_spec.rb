require "spec_helper"

describe NightattacksController do
  describe "routing" do

    it "routes to #index" do
      get("/nightattacks").should route_to("nightattacks#index")
    end

    it "routes to #new" do
      get("/nightattacks/new").should route_to("nightattacks#new")
    end

    it "routes to #show" do
      get("/nightattacks/1").should route_to("nightattacks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nightattacks/1/edit").should route_to("nightattacks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nightattacks").should route_to("nightattacks#create")
    end

    it "routes to #update" do
      put("/nightattacks/1").should route_to("nightattacks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nightattacks/1").should route_to("nightattacks#destroy", :id => "1")
    end

  end
end
