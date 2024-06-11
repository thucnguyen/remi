require "rails_helper"

RSpec.describe MoviesController, type: :routing do
  describe "routing" do
    it "routes to #new" do
      expect(get: "/movies/new").to route_to("movies#new")
    end

    it "routes to #create" do
      expect(post: "/movies").to route_to("movies#create")
    end
  end
end
