require 'rails_helper'

describe "Creating a new user" do
  it "saves the user and shows the user's profile page" do
    visit root_url
    click_link "Sign Up"
    expect(current_path).to eq(signup_path)
  end

  it "does not save the user if it's invald, gives error instead"
end