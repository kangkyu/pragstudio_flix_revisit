require 'rails_helper'

RSpec.feature "NavigateMovies", type: :feature do

  it "navigates from show to index" do
    movie = Movie.create(movie_attributes)

    visit movie_url(movie)
    click_link "All Movies"
    expect(current_path).to eq(movies_path)
  end

  it "navigates from index to show" do
    movie = Movie.create(movie_attributes)

    visit movies_url
    click_link movie.title
    expect(current_path).to eq(movie_path(movie))
  end
end
