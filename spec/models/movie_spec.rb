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

  it "also ordered with the most recently-released movie first" do
    movie2 = Movie.create(movie_attributes(released_on: 2.months.ago))
    movie1 = Movie.create(movie_attributes(released_on: 1.months.ago))
    movie3 = Movie.create(movie_attributes(released_on: 3.months.ago))

    expect(Movie.released).to eq([movie1, movie2, movie3])
  end

  it "recently_added" do
    movie1 = Movie.create(movie_attributes(released_on: 3.months.ago))
    movie2 = Movie.create(movie_attributes(released_on: 4.months.ago))
    movie3 = Movie.create(movie_attributes(released_on: 1.months.ago))
    movie4 = Movie.create(movie_attributes(released_on: 5.months.ago))

    expect(Movie.recently_added).to eq([movie4, movie3, movie2])
  end

  it "requires a title" do
    movie = Movie.new(title: "")
    movie.valid?  # populates errors

    expect(movie.errors[:title].any?).to eq(true)
  end

  it "accepts a positive total gross" do
    movie = Movie.new(total_gross: 10_000_000.00)
    movie.valid?

    expect(movie.errors[:total_gross].any?).not_to eq(true)
  end

  it "rejects a negative total gross" do
    movie = Movie.new(total_gross: -10_000_000.00)
    movie.valid?

    expect(movie.errors[:total_gross].any?).to eq(true)
  end

  it "accepts properly formatted image file names" do
    file_names = %w[e.png movie.png movie_.jpg movie-two.gif MOVIE.GIF]
    file_names.each do |file_name|
      movie = Movie.new(image_file_name: file_name)
      movie.valid?
      expect(movie.errors[:image_file_name].any?).not_to eq(true)
    end
  end

  it "rejects improperly formatted image file names" do
    file_names = %w[movie .jpg .png .gif movie.pdf movie_.doc]
    file_names.each do |file_name|
      movie = Movie.new(image_file_name: file_name)
      movie.valid?
      expect(movie.errors[:image_file_name].any?).to eq(true)
    end
  end

  it "accepts if image_file_name blank" do
    movie = Movie.new(image_file_name: "")
    movie.valid?

    expect(movie.errors[:image_file_name].any?).not_to eq(true)
  end

  it "accepts example attributes" do
    movie = Movie.new(movie_attributes)
    
    expect(movie.valid?).to eq(true)
  end

  it "accepts any rating on the approved list" do
    ratings = %w[G PG PG-13 R NC-17]
    ratings.each do |rating|
      movie = Movie.new(rating: rating)
      movie.valid?

      expect(movie.errors[:rating].any?).not_to eq(true)
    end
  end

  it "rejects any rating not on the approved list" do
    ratings = %w[R-13 G-17 PG-32]
    ratings.each do |rating|
      movie = Movie.new(rating: rating)
      movie.valid?

      expect(movie.errors[:rating].any?).to eq(true)
    end
  end
end

