require 'rails_helper'
require 'features/web_helper'

RSpec.feature "Admin can click on link new user", type: :feature do
  scenario "Admin can click on link new user" do
    visit "/"
    click_link("Sign Up")
    fill_in('First name', with: 'Peter')
    fill_in('Last name', with: 'Boom')
    fill_in('Email', with: 'peter1@gmail.com')
    fill_in('Username', with: 'username')
    fill_in('Password', with: 'password')
    fill_in('Password confirmation', with: 'password')
    click_button('Save User')

    click_link('Log In')
    fill_in('Username', with: 'username')
    fill_in('Password', with: 'password')
    click_button('Log in')


    #visit "/users"
    #click_link('New user')
    expect(page).to have_content('Username: username')
  end
end
