require "spec_helper"

describe CurvesController do
  describe "routing" do

    it "routes to #index" do
      get("/curves").should route_to("curves#index")
    end

    it "routes to #new" do
      get("/curves/new").should route_to("curves#new")
    end

    it "routes to #show" do
      get("/curves/1").should route_to("curves#show", :id => "1")
    end

    it "routes to #edit" do
      get("/curves/1/edit").should route_to("curves#edit", :id => "1")
    end

    it "routes to #create" do
      post("/curves").should route_to("curves#create")
    end

    it "routes to #update" do
      put("/curves/1").should route_to("curves#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/curves/1").should route_to("curves#destroy", :id => "1")
    end

  end
end
