require 'rails_helper'

RSpec.feature "adding a movie", type: :feature do
  it "saves the movie and shows its details" do
    visit movies_url
    click_link 'Add New Movie'

    expect(current_path).to eq(new_movie_path)

    #

    fill_in "Title", with: "New Movie"
    fill_in "Description", with: "This movie came out yesterday, so I'm adding it to the list right now"
    fill_in "Rating", with: "PG-13"
    fill_in "Total gross", with: 100
    select (Time.now.year - 1).to_s, :from => "movie_released_on_1i"
    click_button 'Create Movie'

    expect(current_path).to eq(movie_path(Movie.last))
    expect(page).to have_text("New Movie")

  end
end
