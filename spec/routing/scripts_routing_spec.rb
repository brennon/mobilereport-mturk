require "spec_helper"

describe ScriptsController do
  describe "routing" do

    it "routes to #index" do
      get("/scripts").should route_to("scripts#index")
    end

    it "routes to #new" do
      get("/scripts/new").should route_to("scripts#new")
    end

    it "routes to #show" do
      get("/scripts/1").should route_to("scripts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scripts/1/edit").should route_to("scripts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scripts").should route_to("scripts#create")
    end

    it "routes to #update" do
      put("/scripts/1").should route_to("scripts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scripts/1").should route_to("scripts#destroy", :id => "1")
    end

  end
end
