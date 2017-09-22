require 'watir'
require 'roo'
require_relative '../Utilties/Global.rb'

include Global

file = "#{Global::TEST_DATA_FOLDER}LoginData.xlsx"
#Open workbook and worksheet
workbook = Roo::Spreadsheet.open file
worksheet = workbook.sheet("Sheet1")
#Iterate through worksheet
worksheet.each_row_streaming do | record |
  email = record[0]
  password = record[1]
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
    driver.screenshot.save ("#{Global::OUTPUT_FOLDER}login_test_#{email}.png")
    puts "TEST FAILED"
  end

  #4. Close the browser
  driver.close
end
