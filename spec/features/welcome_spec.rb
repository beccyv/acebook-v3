require 'rails_helper'

RSpec.feature "Welcome to Acebook landing page", type: :feature do
  scenario "Can can see welcome page and redirect to signup" do
    visit "/"
    expect(page).to have_content("Welcome to Acebook")
  end

  scenario "Can can click on Sign Up link" do
    visit "/"
    click_link("Sign Up")
    expect(page).to have_content("New User")
  end
end
