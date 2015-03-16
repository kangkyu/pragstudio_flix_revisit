require 'rails_helper'

describe 'movies#show' do
  it "shows movie details" do
    movie = Movie.create(movie_attributes)

    visit movie_url(movie)

    expect(page).to have_text(movie.title)
    expect(page).to have_text(movie.rating)
    expect(page).to have_text("134,218,018.00")
    expect(page).to have_text(movie.description)
    expect(page).to have_text(movie.released_on)
  end
end