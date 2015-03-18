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

  it "requires a name" do
    review = Review.new(name: "")
    review.valid?

    expect(review.errors[:name].any?).to eq(true)
  end
  it "requires a stars" do
    review = Review.new(stars: "")
    review.valid?

    expect(review.errors[:stars].any?).to eq(true)
  end
  it "requires a comment" do
    review = Review.new(comment: "")
    review.valid?

    expect(review.errors[:comment].any?).to eq(true)
  end
end
