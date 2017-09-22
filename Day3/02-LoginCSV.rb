require 'watir'

file = "C:/Intersections/TestData/LoginData.csv"
file_data = open(file)
file_data.each do | record |
  user = record.split(",")
  #Assign values for each element of the array
  email = user[0]
  password = user[1].strip
  puts "NEW USER TEST: #{email} | #{password}"

  #1. Navigate to the browser (open browser)
  driver = Watir::Browser.new :chrome
  driver.goto 'http://sdettraining.com/trguitransactions/AccountManagement.aspx'

  #2. Enter login information
  driver.text_field(:id=>'MainContent_txtUserName').set(email)
  driver.text_field(:name=>'ctl00$MainContent$txtPassword').set(password)
  driver.button(:id=>'MainContent_btnLogin').click

  #3. Valdidating correct login
  page_text = driver.text
  if page_text.include? "success"
    puts "TEST PASSED"
  else
    puts "TEST FAILED"
  end

  #4. Close the browser
  sleep(2)
  driver.close
end
