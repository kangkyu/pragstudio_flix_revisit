require 'rails_helper'

RSpec.feature "EditUsers", type: :feature do

  it "updates the user" do
    user = User.create!(user_attributes)
    visit user_url(user)
    click_link 'Edit Account'

    expect(current_path).to eq(edit_user_path(user))
    expect(find_field('Name').value).to eq(user.name)

    fill_in "Name", with: "Updated User"
    click_button "Update"
    expect(current_path).to eq(user_path(user))

    expect(page).to have_text("Updated User")
    expect(page).to have_text("Account successfully updated!")
  end
end
