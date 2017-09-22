require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'

#Setup Capybara
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium

#Given
Given (/^the user is on the login page$/) do
  puts "User on Login Page"
  visit 'http://sdettraining.com/trguitransactions/AccountManagement.aspx'
end

#When
When (/^the user enters email and password$/) do
  puts "User enters credentials"
  fill_in 'MainContent_txtUserName', with:"tim@testemail.com"
end

#Then
Then (/^the user should see the dashboard$/) do
  puts "User sees dashboard"
end
