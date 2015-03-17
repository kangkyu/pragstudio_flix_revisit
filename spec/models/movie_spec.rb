require 'rails_helper'

RSpec.describe Movie, type: :model do

  it "flop if the total gross less than $50M" do
    movie = Movie.new(total_gross: 49_999_999.00)
    expect(movie).to be_flop
  end

  it "flop if the total gross exceeds $50M" do
    movie = Movie.new(total_gross: 50_000_001.00)
    expect(movie).to_not be_flop
  end
end
