require 'rails_helper'

RSpec.feature "Admin can click on link new user", type: :feature do
  scenario "Udmin can click on link new user" do
    visit "/users"
    click_link('New user')
    expect(page).to have_content('New User')
  end
end 
