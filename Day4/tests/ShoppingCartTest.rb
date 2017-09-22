require 'watir'
require_relative '../pages/Search.rb'
require_relative '../pages/SearchResults.rb'
require_relative '../pages/ShoppingCart.rb'

#Start the browser
$browser = Watir::Browser.new:firefox
$browser.goto 'http://sdettraining.com/online/default.asp'

#Search for the product

#Use pages as Object
#search_page = SearchPage.new
#search_page.search_product("tv")
#search_page.click_go

#Use page as Module
include SearchPage
SearchPage.search_for_product_and_click_go("tv")

#Add product to the cart
include SearchResultsPage
SearchResultsPage.print_all_listings
SearchResultsPage.add_item_to_cart(3)

#Shopping cart page: modify or click checkout
#1. Do we want to click submit?
#2. Do we want to keep shopping?
#3. Do we want to modify the cart?
include ShoppingCartPage
ShoppingCartPage.modify_quantity_and_recalculate(3)
ShoppingCartPage.click_checkout

#Checkout

#Confirmation

sleep(2)
$browser.close
