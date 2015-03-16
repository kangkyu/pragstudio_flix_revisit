require 'rails_helper'

RSpec.feature "Viewing the list of movies", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  it "shows the movies" do
    visit movies_url
    expect(page).to have_text("3 Movies")

    expect(page).to have_text("Movie 1")
    expect(page).to have_text("Movie 2")
    expect(page).to have_text("Movie 3")

  end
end
