require 'rails_helper'

describe "Creating a new user" do
  it "saves the user and shows the user's profile page" do
    visit root_url
    click_link "Sign Up"
    expect(current_path).to eq(signup_path)

    fill_in 'Name', with: "Example User"
    fill_in 'Email', with: user_attributes[:email]
    fill_in 'Password', with: user_attributes[:password]
    fill_in 'Password confirmation', with: user_attributes[:password_confirmation]

    click_button "Register"
    expect(current_path).to eq(user_path(User.last))

    expect(page).to have_text("Example User")
    expect(page).to have_text("Thanks for signing up!")
  end

  it "does not save the user if it's invald, gives error instead" do
    visit signup_url

    expect {
      click_button 'Register'
    }.not_to change(User, :count)

    expect(page).to have_text("error")
  end
end
