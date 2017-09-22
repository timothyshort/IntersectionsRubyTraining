=begin
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'

# variables local to the block its defined in
# @ instance variable - belongs to an object
# @@ class variable - belongs to the class / file
# $ global variable - throughout project

#Setup Capybara
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium

#Given
Given (/^the user is on the login page$/) do
  visit 'http://sdettraining.com/trguitransactions/AccountManagement.aspx'
end

#When
When (/^the user enters email and password$/) do
  fill_in 'MainContent_txtUserName', with:"sam@testemail.com"
  fill_in 'MainContent_txtPassword', with:"sapass"
  click_button 'MainContent_btnLogin'
end

#Then
Then (/^the user should see the dashboard$/) do
  expect(page).to have_content("success")
end
=end
