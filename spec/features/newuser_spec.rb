require 'rails_helper'

RSpec.feature "New User can sign up", type: :feature do
  scenario "User can signup for Acebook" do
    visit "/users/new"
    fill_in('Username', with: 'username')
    fill_in('Password', with: 'password')
    fill_in('Password confirmation', with: 'password')
    fill_in('Email', with: 'peter1@gmail.com')
    fill_in('First name', with: 'Peter')
    fill_in('Last name', with: 'Boom')
    click_button('Save User')
    expect(page).to have_content('First Name: Peter')
  end


    scenario "User can signup for Acebook" do
      visit "/users/new"
      fill_in('Username', with: 'po')
      fill_in('Password', with: 'password')
      fill_in('Password confirmation', with: 'password')
      fill_in('Email', with: 'doodooface@gmail.com')
      fill_in('First name', with: 'Peter')
      fill_in('Last name', with: 'Boom')
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
    visit "/users/new"
    fill_in('Username', with: 'po')
    fill_in('Password', with: 'hfkghskbfkegbkgkqegfkgwekc')
    fill_in('Password confirmation', with: 'hfkghskbfkegbkgkqegfkgwekc')
    fill_in('Email', with: 'doodooface')
    fill_in('First name', with: 'Peter')
    fill_in('Last name', with: 'Boom')
    click_button('Save User')
    expect(page).to have_content('Email is not an email')
  end

scenario "User can signup for Acebook" do
  visit "/users/new"
  fill_in('Username', with: 'po')
  fill_in('Password', with: 'hfkghskbfkegbkgkqegfkgwekc')
  fill_in('Password confirmation', with: 'hfkghskbfkegbkgkqegfkgwekc')
  fill_in('Email', with: 'doodooface')
  fill_in('First name', with: 'Fkghskbfkegbkgkqegfkgwekc')
  fill_in('Last name', with: 'Boom')
  click_button('Save User')
  expect(page).to have_content('First name is too long')
end

scenario "User can signup for Acebook" do
  visit "/users/new"
  fill_in('Username', with: 'po')
  fill_in('Password', with: 'hfkghskbfkegbkgkqegfkgwekc')
  fill_in('Password confirmation', with: 'hfkghskbfkegbkgkqegfkgwekc')
  fill_in('Email', with: 'doodooface')
  fill_in('First name', with: 'Fkghskbfkegbkgkqegfkgwekc')
  fill_in('Last name', with: 'Fkghskbfkegbkgkqegfkgwekchfg')
  click_button('Save User')
  expect(page).to have_content('Last name is too long')
end
end
