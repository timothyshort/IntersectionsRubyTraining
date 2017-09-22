#Each feature file describes one business requirement
Feature: The login application
  As a user on our website
  I want to login to the application
  So that I can view account information

#Describe a specific situation to test the feature
Scenario: The user should be able to login with good credentials
Given the user is on the login page
When the user enters email and password
Then the user should see the dashboard
