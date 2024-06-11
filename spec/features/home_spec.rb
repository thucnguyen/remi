require "rails_helper"

RSpec.describe "Home page", type: :feature do
  let(:movies) { create_list(:movie, 2) }

  before do
    movies
  end

  scenario "User can see movies on home page" do
    visit "/"

    expect(page).to have_text(movies.first.youtube_url)
  end
end
