require 'rails_helper'

RSpec.feature "User can add a post", type: :feature do
  scenario "User can add a post Acebook" do
    visit "/users/new"
    fill_in('Username', with: 'username')
    fill_in('Password', with: 'password')
    fill_in('Password confirmation', with: 'password')
    fill_in('Email', with: 'peter1@gmail.com')
    fill_in('First name', with: 'Peter')
    fill_in('Last name', with: 'Boom')
    click_button('Sign Up')

    click_link('Log In')
    fill_in('Username', with: 'username')
    fill_in('Password', with: 'password')
    click_button('Log in')
    fill_in('Post', with: 'Hello World')
    click_button('Create Post')
    expect(page).to have_content('Hello World')
  end
end
