require "rails_helper"

RSpec.describe Admin::AreasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/areas").to route_to("admin/areas#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/areas/new").to route_to("admin/areas#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/areas/1").to route_to("admin/areas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/areas/1/edit").to route_to("admin/areas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/areas").to route_to("admin/areas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin/areas/1").to route_to("admin/areas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin/areas/1").to route_to("admin/areas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/areas/1").to route_to("admin/areas#destroy", :id => "1")
    end

  end
end
