require 'watir'

#1. Navigate to the browser (open browser)
driver = Watir::Browser.new :chrome
driver.goto 'http://sdettraining.com/trguitransactions/AccountManagement.aspx'

#Finding Elements
  #What kind of element?
  #Which locator method (attribute) should we use? >> name or id
  #What property of the locator should we use (what is the value of the attribute)?

#2. Enter username
driver.text_field(:id=>'MainContent_txtUserName').set("tim@testemail.com")

#3. Enter password
driver.text_field(:name=>'ctl00$MainContent$txtPassword').set("trpass")

#4. Click login
driver.button(:id=>'MainContent_btnLogin').click

#5. Get some confirmation

#Page Title, Page Text, Confirmation Message
page_title = driver.title
page_text = driver.text
message = driver.small(:id=>'conf_message').text
#message = driver.element(:id=>'conf_message').text

puts "***\nPAGE TITLE #{page_title}"

#if page_text.include? "success"
if message.include? "success"
  puts "TEST PASSED"
else
  puts "TEST FAILED"
end

sleep(5)
driver.close
