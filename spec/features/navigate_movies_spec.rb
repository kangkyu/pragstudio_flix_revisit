require 'rails_helper'

RSpec.feature "NavigateMovies", type: :feature do

  it "navigates from show to index" do
    movie = Movie.create(title: "Superman",
                        rating: "PG",
                        total_gross: 134218018.00,
                        description: "Clark Kent grows up to be the greatest super-hero",
                        released_on: "1978-12-15")

    visit movie_url(movie)
    click_link "All Movies"
    expect(current_path).to eq(movies_path)
  end

  it "navigates from index to show" do
    movie = Movie.create(title: "Superman",
                        rating: "PG",
                        total_gross: 134218018.00,
                        description: "Clark Kent grows up to be the greatest super-hero",
                        released_on: "1978-12-15")

    visit movies_url
    click_link movie.title
    expect(current_path).to eq(movie_path(movie))
  end
end
