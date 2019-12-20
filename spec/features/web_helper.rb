def signup_url
  visit "/"
  click_link("Sign Up")
  fill_in('First name', with: 'Peter')
  fill_in('Last name', with: 'Boom')
  fill_in('Email', with: 'peter1@gmail.com')
  fill_in('Username', with: 'username')
  fill_in('Password', with: 'password')
  fill_in('Password confirmation', with: 'password')
  click_button('Sign Up')
end

def login_url
  click_link('Log In')
  fill_in('Username', with: 'username')
  fill_in('Password', with: 'password')
  click_button('Log in')
end
