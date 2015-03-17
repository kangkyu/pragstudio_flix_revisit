require 'rails_helper'

RSpec.feature "adding a movie", type: :feature do
  it "saves the movie and shows its details" do
    visit movies_url
    click_link 'Add New Movie'

    expect(current_path).to eq(new_movie_path)
  end
end
