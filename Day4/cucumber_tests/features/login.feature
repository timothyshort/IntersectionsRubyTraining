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

@bad_login
Scenario: The user should not be able to login with bad credentials
Given the user is on the login page
When the user enters email
And the user enters password
And the user clicks login
Then the user should see a failed message

@parameterized
Scenario Outline: The user should login
Given the user is on the login page
When the user enters email as <email>
And the user enters password as <password>
And the user clicks login
Then the user should see the dashboard

  Examples:
  |email|password|
  |tim@testemail.com|trpass|
  |rw@testemail.com|rwpass|
  |rs@testemail.com|rspass|
  |jv@testemail.com|jvpass|

#Instruct Cucumber to run specific feature file: cucumber features/feature.file
#Instruct Cucumber to run specific tag: cucumber --tags @tagname
