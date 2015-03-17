require 'rails_helper'

describe 'movies#show' do
  it "shows movie details" do
    movie = Movie.create(title: "Superman",
                          rating: "PG",
                          total_gross: 134218018.00,
                          description: "Clark Kent grows up to be the greatest super-hero",
                          released_on: "1978-12-15",
                          cast: "Robert Downey Jr., Gwyneth Paltrow and Terrence Howard",
                          director: "Jon Favreau",
                          duration: "126 min",
                          image_file_name: "ironman.jpg")

    visit movie_url(movie)

    expect(page).to have_text(movie.title)
    expect(page).to have_text(movie.rating)
    expect(page).to have_text("134,218,018.00")
    expect(page).to have_text(movie.description)
    expect(page).to have_text(movie.released_on)
    expect(page).to have_text(movie.cast)
    expect(page).to have_text(movie.director)
    expect(page).to have_text(movie.duration)
    expect(page).to have_selector("img[src$='#{movie.image_file_name}']")
  end

  it "shows the total gross as flop if if less than $50M" do
    movie = Movie.create(movie_attributes(total_gross: 10))
    visit movie_url(movie)
    expect(page).to have_text("flop")
  end

  it "shows the total gross if exceeds $50M" do
    movie = Movie.create(movie_attributes(total_gross: 300_000_000))
    visit movie_url(movie)
    expect(page).to have_text("300,000,000.00")
  end
end
