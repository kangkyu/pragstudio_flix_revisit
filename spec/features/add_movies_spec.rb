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
    fill_in "Cast", with: "The award-winning cast"
    fill_in "Director", with: "The ever-creative director"
    fill_in "Duration", with: "123 min"
    fill_in "Image file name", with: "movie.png"
    click_button 'Add Movie'

    expect(current_path).to eq(movie_path(Movie.last))
    expect(page).to have_text("New Movie")
    expect(page).to have_text("123 min")
    expect(page).to have_text("Movie successfully added!")
  end

  it "does not save the movie if invalid" do
    visit new_movie_url

    expect {
        click_button 'Add Movie'
    }.not_to change(Movie, :count)

    expect(current_path).to eq(movies_path)
    expect(page).to have_text('error')
  end
end
