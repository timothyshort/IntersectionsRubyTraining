require 'watir'
require 'rspec'

Given (/^the user is on the login page$/) do
  $b.goto 'http://sdettraining.com/trguitransactions/AccountManagement.aspx'
end

When (/^the user enters email and password$/) do
  $b.text_field(id: 'MainContent_txtUserName').set("tim@testemail.com")
  $b.text_field(id: 'MainContent_txtPassword').set("trpass")
  $b.button(id: 'MainContent_btnLogin').click
end

Then (/^the user should see the dashboard$/) do
  expect($b.text).to include("success")
end

When(/^the user enters email$/) do
  $b.text_field(id: 'MainContent_txtUserName').set("sam@testemail.com")
end

When(/^the user enters password$/) do
  $b.text_field(id: 'MainContent_txtPassword').set("sapass")
end

And(/^the user clicks login$/) do
  $b.button(id: 'MainContent_btnLogin').click
end

When(/^the user enters email as (.*)$/) do | username |
  $b.text_field(id: 'MainContent_txtUserName').set(username)
end

And(/^the user enters password as (.*)$/) do | password |
  $b.text_field(id: 'MainContent_txtPassword').set(password)
end

Then(/^the user should see a failed message$/) do
  expect($b.text).to include("Invalid")
end
