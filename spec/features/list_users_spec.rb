require 'rails_helper'

RSpec.feature "ListUsers", type: :feature do
  it "shows the users" do
    user1 = User.create!(user_attributes(name: "Larry", email: "larry@example.com"))
    user2 = User.create!(user_attributes(name: "Moe", email: "moe@example.com"))
    user3 = User.create!(user_attributes(name: "Curly", email: "curly@example.com"))
    visit users_url

    expect(page).to have_link(user1.name)
    expect(page).to have_link(user2.name)
    expect(page).to have_link(user3.name)
  end

  it "leads to user detail page by the user name link" do
    user1 = User.create!(user_attributes(name: "Larry", email: "larry@example.com"))
    visit users_url
    
    click_link user1.name
    expect(page).to have_text(user1.name)
  end
end
