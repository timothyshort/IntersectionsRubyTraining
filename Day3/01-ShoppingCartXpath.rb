require 'watir'

#Start the browser
browser = Watir::Browser.new:firefox
browser.goto 'http://sdettraining.com/online/default.asp'

#Set parameters
search_product = "tv"
item_result = 3

#Search for the product
browser.text_field(:name=>'txtSearch').set(search_product)
browser.button(:id=>'Go').click

#Print product listings
puts "***PRODUCT LISTINGS***\n"
puts browser.table(:xpath=>'html/body/font/table[1]').text

#Print second product information
puts "\n***PRODUCT INFORMATION***"
puts browser.table(:xpath=>'html/body/font/table[1]').td(:xpath=>"tbody/tr[#{item_result}]/td[2]").text
puts browser.font(:xpath=>"html/body/font/table[1]/tbody/tr[#{item_result}]/td[3]/font").text

#Add product to the cart
browser.img(:xpath=>"html/body/font/table[1]/tbody/tr[#{item_result}]/td[3]/a/img").click

#Print product information in shopping cart
puts "\n***SHOPPING CART***"
puts browser.font(:xpath=>'/html/body/font/form/table/tbody/tr[2]/td[3]/font').text
puts browser.font(:xpath=>'/html/body/font/form/table/tbody/tr[2]/td[5]/font').text

#Click checkout
browser.button(:name => 'cmdSubmit', :value=> 'Proceed to Checkout').click

#Fill out customer information
browser.button(:name => 'cmdSubmit', :value=> 'Submit Order').click

#Get confirmation
result = browser.font(:xpath => 'html/body/font').text
print 'Confirmation: '
#Use regex to extract the specific number
#RegEx - search for Order# %wildcard% safe
puts result.match(/Order# (.*) safe/)[1]



sleep(5)

browser.close
