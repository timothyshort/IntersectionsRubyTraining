require 'watir'

#Open a new browser
browser = Watir::Browser.new :ie

#Navigate to our test page
browser.goto 'http://sdettraining.com/trguitransactions/AccountManagement.aspx'

sleep(5)

#Get the title of the web page
puts browser.title

#Close the browser
browser.close
