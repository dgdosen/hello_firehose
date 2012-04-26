require "spec_helper"

describe SquisheeCupsController do
  describe "routing" do

    it "routes to #index" do
      get("/squishee_cups").should route_to("squishee_cups#index")
    end

    it "routes to #new" do
      get("/squishee_cups/new").should route_to("squishee_cups#new")
    end

    it "routes to #show" do
      get("/squishee_cups/1").should route_to("squishee_cups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/squishee_cups/1/edit").should route_to("squishee_cups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/squishee_cups").should route_to("squishee_cups#create")
    end

    it "routes to #update" do
      put("/squishee_cups/1").should route_to("squishee_cups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/squishee_cups/1").should route_to("squishee_cups#destroy", :id => "1")
    end

  end
end
