require 'rails_helper'

describe 'Add Reviews' do
  it "saves the review" do
    movie = Movie.create(movie_attributes)
    visit movie_url(movie)
    click_link 'Write Review'
    expect(current_path).to eq(new_movie_review_path(movie))
    fill_in "Name", with: "Somebody Who"
    fill_in "Comment", with: "I have watched the example movie."
    select 3, from: "review_stars" 
      # label for="review_stars"
      # select name="review[stars]" id="review_stars"
    click_button 'Post Review'
    expect(current_path).to eq(movie_reviews_path(movie))
    expect(page).to have_text("Thanks for your review!")
  end

end