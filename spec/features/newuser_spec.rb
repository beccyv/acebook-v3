require 'rails_helper'

RSpec.feature "New User can sign up", type: :feature do
  scenario "User can signup for Acebook" do
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
    expect(page).to have_content('First Name: Peter')
  end

    scenario "User can signup for Acebook" do
      visit "/"
      click_link "Sign Up"
      fill_in('First name', with: 'Peter')
      fill_in('Last name', with: 'Boom')
      fill_in('Email', with: 'doodooface@gmail.com')
      fill_in('Username', with: 'po')
      fill_in('Password', with: 'password')
      fill_in('Password confirmation', with: 'password')
      click_button('Save User')
      expect(page).to have_content('Username is too short')
    end

  scenario "User can signup for Acebook" do
    visit "/users/new"
    fill_in('Username', with: 'po')
    fill_in('Password', with: 'hfkghskbfkegbkgkqegfkgwekc')
    fill_in('Password confirmation', with: 'hfkghskbfkegbkgkqegfkgwekc')
    fill_in('Email', with: 'doodooface@gmail.com')
    fill_in('First name', with: 'Peter')
    fill_in('Last name', with: 'Boom')
    click_button('Save User')
    expect(page).to have_content('Password is too long')
  end

  scenario "User can signup for Acebook" do
    visit "/signup"
    fill_in('First name', with: 'Peter')
    fill_in('Last name', with: 'Boom')
    fill_in('Email', with: 'doodooface')
    fill_in('Username', with: 'po')
    fill_in('Password', with: 'hfkghskbfkegbkgkqegfkgwekc')
    fill_in('Password confirmation', with: 'hfkghskbfkegbkgkqegfkgwekc')
    click_button('Save User')
    expect(page).to have_content('Email is not valid. Emails must be in standard format')
  end

scenario "User can signup for Acebook" do
  visit "/signup"
  fill_in('First name', with: 'Fkghskbfkegbkgkqegfkgwekc')
  fill_in('Last name', with: 'Boom')
  fill_in('Email', with: 'doodooface')
  fill_in('Username', with: 'po')
  fill_in('Password', with: 'hfkghskbfkegbkgkqegfkgwekc')
  fill_in('Password confirmation', with: 'hfkghskbfkegbkgkqegfkgwekc')
  click_button('Save User')
  expect(page).to have_content('First name is too long')
end

scenario "User can signup for Acebook" do
  visit "/signup"
  fill_in('First name', with: 'Fkghskbfkegbkgkqegfkgwekc')
  fill_in('Last name', with: 'Fkghskbfkegbkgkqegfkgwekchfg')
  fill_in('Email', with: 'doodooface')
  fill_in('Username', with: 'po')
  fill_in('Password', with: 'hfkghskbfkegbkgkqegfkgwekc')
  fill_in('Password confirmation', with: 'hfkghskbfkegbkgkqegfkgwekc')
  click_button('Save User')
  expect(page).to have_content('Last name is too long')
end

scenario "Admin can view user list" do
  visit "/"
  click_link "Sign Up"
  fill_in('Username', with: 'username')
  fill_in('Password', with: 'password')
  fill_in('Password confirmation', with: 'password')
  fill_in('Email', with: 'peter1@gmail.com')
  fill_in('First name', with: 'Peter')
  fill_in('Last name', with: 'Boom')
  click_button('Save User')
  click_link('Log In')
  fill_in('Username', with: 'username')
  fill_in('Password', with: 'password')
  click_button('Log in')
  visit "/users"
  expect(page).to have_content('Boom')
end

scenario "User can signup for Acebook" do
  visit "/signup"
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
  visit "/"
  click_link('Log Out')
    expect(page).to have_content('Logged out!')
  end

  scenario "Admin can click on show link" do
    visit "/users/new"
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

    visit "/users"
      click_link('Show')
      expect(page).to have_content('Add a post:')
  end

  scenario "Redirect if not logged in" do
  visit "/users"
  expect(page).to have_content('Welcome to Acebook')
    end
  end
