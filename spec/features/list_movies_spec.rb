require 'rails_helper'

RSpec.feature "Viewing the list of movies", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  it "shows the movies" do
    visit 'http://example.com/movies'
    expect(page).to have_text("3 Movies")
  end
end
