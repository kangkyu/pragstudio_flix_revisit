require 'rails_helper'

RSpec.describe Movie, type: :model do

  it "flop if the total gross less than $50M" do
    movie = Movie.new(total_gross: 49_999_999.00)
    expect(movie).to be_flop
  end

  it "not flop if the total gross exceeds $50M" do
    movie = Movie.new(total_gross: 50_000_001.00)
    expect(movie).to_not be_flop
  end

  it "released" do
    movie = Movie.create(movie_attributes(released_on: 3.months.ago))
    expect(Movie.released).to include(movie)

    movie = Movie.create(movie_attributes(released_on: 3.months.from_now))
    expect(Movie.released).to_not include(movie)
  end
end
