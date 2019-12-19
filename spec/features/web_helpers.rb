def sign_up
  visit "/"
  fill_in('Username', with: 'username')
  fill_in('Password', with: 'password')
  fill_in('Password confirmation', with: 'password')
  fill_in('Email', with: 'peter1@gmail.com')
  fill_in('First name', with: 'Peter')
  fill_in('Last name', with: 'Boom')
  click_button('Save User')
end

def log_in
  click_link('Log In')
  fill_in('Username', with: 'username')
  fill_in('Password', with: 'password')
  click_button('Log in')
end
