require 'rails_helper'

RSpec.describe "/movies", type: :request do
  let(:valid_attributes) do
    {
      youtube_url: 'https://www.youtube.com/watch?v=IpDNg7Xj2R4'
    }
  end
  let(:invalid_attributes) do
    {
      youtube_url: ''
    }
  end

  before do
    sign_in(create(:user))
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_movie_url
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Movie" do
        expect {
          post movies_url, params: { movie: valid_attributes }
        }.to change(Movie, :count).by(1)
      end

      it "redirects to the created movie" do
        post movies_url, params: { movie: valid_attributes }
        expect(response).to redirect_to(root_url)
      end
    end

    context "with invalid parameters" do
      it "does not create a new Movie" do
        expect {
          post movies_url, params: { movie: invalid_attributes }
        }.to change(Movie, :count).by(0)
      end

    
      it "renders a unsuccessful response (i.e. to display the 'new' template)" do
        post movies_url, params: { movie: invalid_attributes }
        expect(response).not_to be_successful
      end
    end
  end
end
