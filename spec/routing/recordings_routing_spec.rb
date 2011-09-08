require "spec_helper"

describe RecordingsController do
  describe "routing" do

    it "routes to #index" do
      get("/recordings").should route_to("recordings#index")
    end

    it "routes to #new" do
      get("/recordings/new").should route_to("recordings#new")
    end

    it "routes to #show" do
      get("/recordings/1").should route_to("recordings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/recordings/1/edit").should route_to("recordings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/recordings").should route_to("recordings#create")
    end

    it "routes to #update" do
      put("/recordings/1").should route_to("recordings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/recordings/1").should route_to("recordings#destroy", :id => "1")
    end

  end
end
