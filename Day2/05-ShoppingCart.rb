require 'watir'

#Start the browser
browser = Watir::Browser.new:firefox
browser.goto 'http://sdettraining.com/online/default.asp'

#Search for the product
browser.text_field(:name=>'txtSearch').set("tv")
browser.button(:id=>'Go').click

#Add product to cart
browser.td(:xpath=>'/html/body/font/table[1]/tbody/tr[3]/td[2]').text

browser.img(:id=>'btnPanasonic_65in_Viera_Plasma_TC-P65S1.jpg').click

#Click checkout
browser.button(:name=>'cmdSubmit', :text=>'Proceed to Checkout').click


sleep(3)
browser.close
