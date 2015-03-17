require 'rails_helper'

RSpec.feature "DeleteMovies", type: :feature do
  it "destroys the movie and shows movie listing without the deleted one" do
    movie = Movie.create(movie_attributes)
    visit movie_path(movie)
    click_link 'Delete'

    expect(current_path).to eq(movies_path)
    expect(page).to_not have_text(movie.title)
  end
end
