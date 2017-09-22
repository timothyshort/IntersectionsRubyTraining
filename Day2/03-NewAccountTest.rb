require 'watir'

name = "William Henry"
email = "will_henry@trainingrite.com"
phone = "9872342184"
password = "whpass"

#Open browser and go to landing page
browser = Watir::Browser.new :chrome
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
browser.radio(:id=>'MainContent_Male').click
browser.select_list(:id=>'MainContent_menuCountry').select "Denmark"
browser.checkbox(:id=>'MainContent_checkWeeklyEmail').click
browser.checkbox(:id=>'MainContent_checkWeeklyEmail').click

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

sleep(2)
browser.close
