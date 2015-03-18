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

  it "accepts star values of 1 through 5" do
    stars = [1,2,3,4,5]
    stars.each do |star|
      review = Review.new(stars: star)
      review.valid?

      expect(review.errors[:stars].any?).not_to eq(true)
    end
  end

  it "rejects invalid star values" do
    stars = [-1, 0, 6, 7]
    stars.each do |star|
      review = Review.new(stars: star)
      review.valid?

      expect(review.errors[:stars].any?).to eq(true)
    end
  end
end
