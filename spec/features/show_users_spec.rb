require 'rails_helper'

RSpec.feature "ShowUsers", type: :feature do
  it "shows the user's detail" do
    user = User.create(user_attributes)
    visit user_url(user)

    expect(page).to have_text(user.name)
    expect(page).to have_text(user.email)
  end
end
