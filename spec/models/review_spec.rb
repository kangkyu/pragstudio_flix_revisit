require 'rails_helper'

describe 'A review' do
  it "valid with example attributes" do
    review = Review.new(review_attributes)
    expect(review.valid?).to eq(true)
  end

  it "belongs_to a movie" do
    movie = Movie.create(movie_attributes)
    review = movie.reviews.new(review_attributes)

    expect(review.movie).to eq(movie)
  end
end
