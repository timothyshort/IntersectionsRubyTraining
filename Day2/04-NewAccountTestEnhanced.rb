require 'watir'

name = "William Henry"
email = "will_henry@trainingrite.com"
phone = "9872342184"
password = "whpass"
gender = "male"
country = "Brazil"
weeklyEmail = true
monthlyEmail = false
occassionalEmail = false

print "Enter the browser: "
browser_type = gets.chomp

#Open browser and go to landing page
browser = Watir::Browser.new :"#{browser_type}"
browser.goto 'http://sdettraining.com/trguitransactions/AccountManagement.aspx'

#Click on Create New Account
browser.link(:text=>'Create Account').click

#Fill out the form
browser.text_field(:id=>'MainContent_txtFirstName').set(name)
browser.text_field(:id=>'MainContent_txtEmail').set(email)
browser.text_field(:id=>'MainContent_txtHomePhone').set(phone)
browser.text_field(:id=>'MainContent_txtPassword').set(password)
browser.text_field(:id=>'MainContent_txtVerifyPassword').set(password)

#Drop-down menu, Radio button, Checkbox
browser.select_list(:id=>'MainContent_menuCountry').select country

#radio button algorithm
if gender == "male"
  browser.radio(:id=>'MainContent_Male').click
else
  browser.radio(:id=>'MainContent_Female').click
end

#checkbox algorithms
if weeklyEmail
  browser.checkbox(:id=>'MainContent_checkWeeklyEmail').clear
  browser.checkbox(:id=>'MainContent_checkWeeklyEmail').click
else
  browser.checkbox(:id=>'MainContent_checkWeeklyEmail').clear
end

if monthlyEmail
  browser.checkbox(:id=>'MainContent_checkMonthlyEmail').clear
  browser.checkbox(:id=>'MainContent_checkMonthlyEmail').click
else
  browser.checkbox(:id=>'MainContent_checkMonthlyEmail').clear
end

if occassionalEmail
  browser.checkbox(:id=>'MainContent_checkUpdates').clear
  browser.checkbox(:id=>'MainContent_checkUpdates').click
else
  browser.checkbox(:id=>'MainContent_checkUpdates').clear
end

sleep(5)

#Click Submit
browser.button(:id=>'MainContent_btnSubmit').click

#Validate
page_text = browser.text
conf_message = browser.span(:id=>'MainContent_lblTransactionResult').text
puts conf_message

=begin
if page_text.include? "success"
  puts "TEST PASSED"
else
  puts "TEST FAILED"
end
=end

browser.close
