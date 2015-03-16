require 'rails_helper'

describe 'movies#show' do
  it "show movie details" do
    movie = Movie.create(title: "Superman",
                        rating: "PG",
                        total_gross: 134218018.00,
                        description: "Clark Kent grows up to be the greatest super-hero",
                        released_on: "1978-12-15")

    visit movie_url(movie)

    expect(page).to have_text(movie.title)
    expect(page).to have_text(movie.rating)
    expect(page).to have_text("134,218,018.00")
    expect(page).to have_text(movie.description)
    expect(page).to have_text(movie.released_on)
  end
end