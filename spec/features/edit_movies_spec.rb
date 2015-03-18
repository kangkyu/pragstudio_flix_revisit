require 'rails_helper'

RSpec.feature "Editing a Movie", type: :feature do

  it "updates the movie and show updated details" do
    movie = Movie.create(movie_attributes)
    visit movie_url(movie)
    click_link 'Edit'

    expect(current_path).to eq(edit_movie_path(movie))
    expect(find_field('Title').value).to eq(movie.title)

    #

    fill_in 'Title', with: "Updated Movie"
    click_button 'Update Movie'

    expect(current_path).to eq(movie_path(movie))
    expect(page).to have_text('Updated Movie')
    expect(page).to have_text("Movie successfully updated!")
  end

  it "does not update the movie if invalid" do
    movie = Movie.create(movie_attributes)
    visit edit_movie_url(movie)
    fill_in 'Title', with: " "
    click_button 'Update Movie'
    expect(page).to have_text('error')
  end
end
